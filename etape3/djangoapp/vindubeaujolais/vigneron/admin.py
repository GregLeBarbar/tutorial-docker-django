from django.contrib import admin
from .models import Vigneron


class VigneronAdmin(admin.ModelAdmin):
    pass

admin.site.register(Vigneron, VigneronAdmin)

