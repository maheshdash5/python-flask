# python-flask
Python WebApp with Flask

#Pre-Requisite: 
Install Docker 

#Test
pytest and coverage packages added for unit testing

#Local Virtual env setup
python -m venv flask-local-test
source flask-local-test/bin/activate
pip install -r requirements.txt 

#Run the App locally
gunicorn run:app --bind 0.0.0.0:5500

#Run Test Cases Locally
pytest test.py
coverage run -m pytest test.py
coverage report -m

# Build the Docker image
docker build -t flask-app:1.0.0 .

# Run the container
docker run -p 5500:5500 flask-app:1.0.0
