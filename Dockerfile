# Use official Python image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app

# Copy project files to the container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port Flask will run on
EXPOSE 5000

# Command to run the application
#CMD ["python", "run.py"]
CMD ["gunicorn", "run:app", "--bind", "0.0.0.0:5500", "--workers", "2"]
