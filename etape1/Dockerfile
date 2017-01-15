FROM python:3.6

MAINTAINER Grégory Charmier <gregory.charmier@gmail.com>

EXPOSE 8000

WORKDIR /usr/src/vindubeaujolais

COPY vindubeaujolais ./

RUN pip install --no-cache-dir -r requirements.txt && \
    python manage.py makemigrations && \
    python manage.py migrate && \
    echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'gamay')" | python manage.py shell

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

