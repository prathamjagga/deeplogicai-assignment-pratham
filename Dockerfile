# Python Runtime
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy the code
COPY . .

# Install requirements
RUN pip install -r requirements.txt

# Expose the default port
EXPOSE 8000

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]