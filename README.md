
# 🤖 Django ML App

A simple, end-to-end machine learning application built with **Django**.  
This project demonstrates how to train a model, integrate it into a Django web app,  
and serve predictions through a user-friendly web form.  

It now comes with **Docker support**, **Nginx as a reverse proxy**, and a **CI/CD pipeline** for automated builds and pushes to Docker Hub.  

---

## ✨ Core Functionality

This project is broken down into two main parts: **machine learning** and **web integration**.

### 🧠 Machine Learning
- Loads a dataset  
- Processes the data  
- Trains a model (e.g., a Scikit-learn classifier or regressor)  
- Saves the trained model to a serialized file (`.pkl` or `.joblib`)  

### 🌐 Django Web Application
- **Model Service**: Loads the trained model and makes predictions  
- **Web Form**: Defines input fields for user-submitted data  
- **Views**: Handles requests, processes form data, and returns predictions  
- **Templates**: Provides the frontend form and displays results  

---

## 🚀 Getting Started

### 1. Prerequisites
- Python 3.11+ (for local dev)  
- Docker & Docker Compose (for containerized deployment)  
- pip  

### 2. Local Setup (without Docker)

Clone the repository and navigate into the project directory:

```bash
git clone <your-repository-url>
cd django-ml-app
````

Create and activate a virtual environment:

```bash
# MacOS/Linux
python3 -m venv .venv
source .venv/bin/activate

# Windows
python -m venv .venv
.\.venv\Scripts\activate
```

Install dependencies:

```bash
pip install -r requirements.txt
```

Train the model:

```bash
python train.py
```

Apply migrations and start the server:

```bash
python manage.py migrate
python manage.py runserver
```

App available at: 👉 [http://127.0.0.1:8000/](http://127.0.0.1:8000/)

---

## 🐳 Running with Docker & Docker Compose

This project includes a **multi-stage Dockerfile** and `docker-compose.yml` with **Nginx as a reverse proxy**.

### Build & Run:

```bash
docker-compose up --build
```

This will:

* Build the Django + Gunicorn container
* Run Nginx as a reverse proxy
* Mount static files into a shared volume

Now the app will be available at:
👉 [http://localhost/](http://localhost/)

---

## ⚙️ Nginx Setup

The Nginx container serves as a reverse proxy:

* **Proxying Django/Gunicorn requests**
* **Serving static files** from a shared volume

---

## 🔄 CI/CD Pipeline (GitHub Actions)

A GitHub Actions workflow is configured to:

1. Run on pushes to `main`
2. Build Docker image
3. Push image to Docker Hub

Docker image is pushed as:

```
dhiraj918106/django-ml-app:latest
```

Required GitHub Secrets:

* `DOCKERHUB_USERNAME`
* `DOCKERHUB_TOKEN`

---

## 💡 How to Use

1. Open [http://localhost/](http://localhost/) (if using Docker)
   or [http://127.0.0.1:8000/](http://127.0.0.1:8000/) (if running locally)
2. Fill out the prediction form with the required input data
3. Click **"Predict"**
4. View the model’s prediction displayed on the page 🎉

---
