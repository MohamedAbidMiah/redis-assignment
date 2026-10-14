# Use Python 3.11
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the FastAPI application
COPY app.py .

# Start FastAPI
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]