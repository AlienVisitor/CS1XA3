from django.db import models

# Perform ORM to Database with the following commands
#    $ python manage.py makemigrations
#      Migrations for 'modeltest':
#         modeltest/migrations/XXXX_initial.py
#    $ python manage.py migrate
#      Operations to perform:
#            .....
#    $ python manage.py sqlmigrate modeltest XXXX
# Play with generated database using
#    $ python manage.py shell

class Person(models.Model):
    name = models.CharField(max_length=100)
    age = models.IntegerField()
