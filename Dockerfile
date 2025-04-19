FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

# Run migrations & start server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 172.18.0.3:5000"]