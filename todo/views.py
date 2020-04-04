from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .forms import TaskForm
from .models import Task
from django.utils import timezone


# Create your views here.

def index(request):
    return render(request, 'todo/index.html')


@login_required()
def all_tasks(request):
    tasks = Task.objects.order_by('-id').filter(user=request.user)

    context = {
        'tasks': tasks
    }
    return render(request, 'todo/all_tasks.html', context)


@login_required()
def create_todo(request):

    form = TaskForm()

    if request.method == "POST":
        form = TaskForm(request.POST)
        if form.is_valid():
            newTodo = form.save(commit=False)
            newTodo.user = request.user
            newTodo.save()
            messages.success(request, 'Task created successfully.')
            return redirect('todo:tasks')
        else:
            messages.error(request, 'Please fill all fields correctly.')

    context = {
        'form': form
    }
    return render(request, 'todo/create.html', context)


def edit(request, task_id):
    task = get_object_or_404(Task, pk=task_id, user=request.user)
    form = TaskForm(instance=task)

    context = {
        'task': task,
        'form': form
    }

    return render(request, 'todo/edit.html', context)


@login_required()
def update(request, task_id):
    task = get_object_or_404(Task, pk=task_id, user=request.user)
    form = TaskForm(request.POST, instance=task)

    if request.method == "POST":
        if form.is_valid():
            update_task = form.save(commit=False)
            update_task.user = request.user
            update_task.save()
            messages.success(request, 'Task updated successfully.')
            return redirect('todo:tasks')
        else:
            messages.error(request, 'Please fill all fields correctly.')

    context = {
        'task': task,
        'form': form
    }
    return render(request, 'todo/edit.html', context)


@login_required()
def complete(request, task_id):
    task = get_object_or_404(Task, pk=task_id, user=request.user)
    if request.method == 'POST':
        task.completed_date = timezone.now()
        task.save()
        messages.success(request, "Task completed.")
        return redirect('todo:tasks')


@login_required()
def complete_task(request, task_id):
    task = get_object_or_404(Task, pk=task_id, user=request.user)

    if not task.completed_date:
        task.completed_date = timezone.now()
        task.save()
        messages.success(request, "Task completed.")
        return redirect('todo:tasks')
    else:
        messages.warning(request, "Task already completed.")
        return redirect('todo:tasks')


@login_required()
def set_important(request, task_id):
    task = get_object_or_404(Task, pk=task_id, user=request.user)

    if not task.important:
        task.important = True
        task.save()
        messages.success(request, "Task set as important.")
        return redirect('todo:tasks')
    else:
        task.important = False
        task.save()
        messages.info(request, 'Task set as unimportant.')
        return redirect('todo:tasks')


@login_required()
def task_delete(request, task_id):
    task = get_object_or_404(Task, pk=task_id, user=request.user)

    task.delete()
    messages.warning(request, "Task deleted successfully.")
    return redirect('todo:tasks')
