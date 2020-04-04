from django import forms
from .models import Task


class TaskForm(forms.ModelForm):
    title = forms.CharField(widget=forms.TextInput(
        attrs={'class': 'form-control'}), max_length=500)
    memo = forms.CharField(widget=forms.Textarea(
        attrs={'class': 'form-control', 'rows': '5'}), required=False)
    important = forms.BooleanField(initial=False, required=False)

    class Meta:
        model = Task
        fields = ['title', 'memo', 'important']


