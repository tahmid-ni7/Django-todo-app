from django.contrib import admin
from .models import Task


class TaskAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'user', 'created_date')
    list_display_links = ('id', 'title')
    list_filter = ('user',)
    list_per_page = 25


admin.site.register(Task, TaskAdmin)
