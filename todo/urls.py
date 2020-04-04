from django.urls import path
from . import views

app_name = 'todo'

urlpatterns = [
    path('', views.index, name='index'),
    path('tasks', views.all_tasks, name='tasks'),
    path('create', views.create_todo, name='create'),
    path('edit/<int:task_id>', views.edit, name='edit'),
    path('update/<int:task_id>', views.update, name='update'),
    path('complete/<int:task_id>', views.complete, name='complete'),
    path('complete_task/<int:task_id>', views.complete_task, name='complete_task'),
    path('important/<int:task_id>', views.set_important, name='important'),
    path('delete/<int:task_id>', views.task_delete, name='delete'),
]