# python-flask
Python WebApp with Flask

#Local Virtual env setup
python -m venv flask-local-test
source flask-local-test/bin/activate
pip install -r requirements.txt 

#Run using Flask
python run.py

#Test
pytest and coverage packages added for unit testing

#Run the App locally with gunicorn with 2 workers: production grade
gunicorn run:app --bind 0.0.0.0:5500 --workers 2

#Run Test Cases Locally
pytest test.py
coverage run -m pytest test.py
coverage report -m

#Pre-Requisite:
Install Docker

# Build the Docker image
docker build -t flask-app:1.0.0 .

# Run the container
docker run -p 5500:5500 flask-app:1.0.0
