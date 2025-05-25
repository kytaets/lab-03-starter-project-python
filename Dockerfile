# Базовий Dockerfile (версія 1 - неоптимізована)
FROM python:3.10

WORKDIR /app

# Копіюємо всі файли проекту
COPY . .

# Встановлюємо залежності
RUN pip install -r requirements/backend.in

# Відкриваємо порт
EXPOSE 8000

# Команда запуску
CMD ["python", "-m", "uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8000"]