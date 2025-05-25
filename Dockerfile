# Оптимізований Dockerfile (версія 2 - з кешуванням шарів)
FROM python:3.10

WORKDIR /app

# Спочатку копіюємо тільки файли залежностей
COPY requirements.txt .
COPY requirements/ ./requirements/

# Встановлюємо залежності (цей шар буде кешуватися)
RUN pip install -r requirements.txt

# Тепер копіюємо код застосунку (змінюється частіше)
COPY spaceship/ ./spaceship/
COPY build/ ./build/

# Відкриваємо порт
EXPOSE 8000

# Команда запуску
CMD ["python", "-m", "uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8000"]