FROM python:3.6

MAINTAINER Grégory Charmier <gregory.charmier@gmail.com>

EXPOSE 8000

WORKDIR /usr/src/vindubeaujolais

COPY prepare_db.sh vindubeaujolais ./

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

