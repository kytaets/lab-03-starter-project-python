# Alpine Dockerfile (версія 3 - менший розмір)
FROM python:3.10-alpine

WORKDIR /app

# Копіюємо файли залежностей
COPY requirements.txt .
COPY requirements/ ./requirements/

# Встановлюємо залежності
RUN pip install -r requirements.txt

# Копіюємо код застосунку
COPY spaceship/ ./spaceship/
COPY build/ ./build/

# Відкриваємо порт
EXPOSE 8000

# Команда запуску
CMD ["python", "-m", "uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8000"]