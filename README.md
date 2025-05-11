# ml-model-docker
# ML Model Deployment with Docker

This repository contains a machine learning model served via a Flask API in a Docker container.

## Files
- `Dockerfile` - Docker configuration
- `app.py` - Flask application for predictions
- `model.pkl` - trained model
- `requirements.txt` - Python dependencies

## How to Run

1. Build the Docker image:
```bash
docker build -t model-app .
```
2. Run the container:
```bash
docker run -p 5000:5000 model-app
```
3. Send a POST request:
```bash
curl -X POST http://localhost:5000/predict -H "Content-Type: application/json" -d '{"feature1": 5.1, "feature2": 3.5}'
```
