
# 🤖 Django ML App

A simple, end-to-end machine learning application built with **Django**.  
This project demonstrates how to train a model, integrate it into a Django web app,  
and serve predictions through a user-friendly web form.

---

## 📂 Project Structure

```

django-ml-app/
├─ .venv/
├─ mlapp/
│  ├─ **init**.py
│  ├─ asgi.py
│  ├─ settings.py
│  ├─ urls.py
│  └─ wsgi.py
├─ predictor/
│  ├─ migrations/
│  ├─ **init**.py
│  ├─ apps.py
│  ├─ forms.py
│  ├─ services.py
│  ├─ views.py
│  ├─ urls.py
│  └─ tests.py
├─ templates/
│  └─ predictor/
│     └─ predict_form.html
├─ manage.py
├─ requirements.txt
└─ train.py

````

---

## ✨ Core Functionality

This project is broken down into two main parts: **machine learning** and **web integration**.

### 🧠 Machine Learning (`train.py`)
- Loads a dataset  
- Processes the data  
- Trains a model (e.g., a Scikit-learn classifier or regressor)  
- Saves the trained model to a serialized file (`.pkl` or `.joblib`)  

### 🌐 Django Web Application (`predictor` app)

- **Model Service** (`predictor/services.py`):  
  Contains logic to load the trained model and make predictions on new data.

- **Web Form** (`predictor/forms.py`):  
  Defines input fields for user-submitted prediction data.

- **Views** (`predictor/views.py`):  
  Handles requests, processes form data, sends it to the model service, and renders the prediction result.

- **Templates** (`templates/predictor/predict_form.html`):  
  Provides the user interface with a form for input and space to display predictions.

---

## 🚀 Getting Started

Follow these steps to get the application running locally.

### 1. Prerequisites
- Python 3.8+  
- pip

### 2. Setup
Clone the repository and navigate into the project directory:

```bash
git clone <your-repository-url>
cd django-ml-app
````

Create a virtual environment and activate it:

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

### 3. Train the Model

Run the training script:

```bash
python train.py
```

This will generate a serialized model file used by the Django app.

### 4. Run the Django Server

Apply migrations and start the server:

```bash
python manage.py migrate
python manage.py runserver
```

Your app should now be running at:
👉 [http://127.0.0.1:8000/](http://127.0.0.1:8000/)

---

## 💡 How to Use

1. Open your browser and go to [http://127.0.0.1:8000/](http://127.0.0.1:8000/)
2. Fill out the prediction form with the required input data
3. Click **"Predict"**
4. View the model’s prediction displayed on the same page 🎉

---

