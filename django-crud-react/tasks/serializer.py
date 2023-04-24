from rest_framework import serializers
from .models import Task

#rest framework
class TaskSerializer(serializers.ModelSerializer):
    class Meta:
        model = Task
        fields = '__all__' #Serializa todos los campos
