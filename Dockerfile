# Используем базовый образ Python
FROM python:3.9

# Копируем локальные файлы в контейнер
WORKDIR /model
COPY app.py /model/app.py
COPY model.pkl /model/model.pkl
COPY requirements.txt /model/requirements.txt

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r /model/requirements.txt

# Устанавливаем рабочий порт и команду запуска
EXPOSE 5000
CMD ["python", "app.py"]
