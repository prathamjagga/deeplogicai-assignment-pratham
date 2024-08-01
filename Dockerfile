ENV PYTHONUNBUFFERED=1

# Python Runtime
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy the code
COPY . .

# Install requirements
RUN pip install -r requirements.txt

# Expose the default port
EXPOSE 3337

# Run migrations
RUN ["python", "manage.py", "makemigrations"]
RUN ["python", "manage.py", "migrate"]

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:3337"]