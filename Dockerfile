# ===============================
# Stage 1: Builder
# ===============================
FROM python:3.11-slim as builder

WORKDIR /app

# Install build dependencies
RUN apt-get update && apt-get install -y build-essential && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt .
RUN pip install --user --no-cache-dir -r requirements.txt

# ===============================
# Stage 2: Runtime
# ===============================
FROM python:3.11-slim

WORKDIR /app

# Copy installed dependencies from builder
COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH

# Copy Django project files
COPY . .

# Default CMD: run Gunicorn with mlapp.wsgi
CMD ["gunicorn", "mlapp.wsgi:application", "--bind", "0.0.0.0:8000"]
