# coding:utf-8
from django.db import models


class Vigneron(models.Model):

    first_name= models.CharField(max_length=255, verbose_name="Prénom")
    last_name = models.CharField(max_length=255, verbose_name="Nom")

    class Meta:
        db_table = 'vigneron'
        ordering = ('last_name', 'first_name')

    def __str__(self):
        return self.last_name + ' ' + self.first_name

