# Image and Maintainer
FROM python:3.10.4-alpine
MAINTAINER Alm4my

# Enable unbuffered mode. This makes python not buffer the outputs and print them directly.
# Recommended for docker builds to avoid complications with docker images.
ENV PYTHONUNBUFFERED 1

# Copy local requirements on the docker image
COPY ./requirements.txt /requirements.txt

# Install requirements
RUN pip install -r /requirements.txt

# Create directory to save our source code
# Set current directory to be created directory
# Copy local app to app folder on docker image
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Add user to run our application only in container meaning not having a home dir
# Switch to that user for security purposes to avoid running as root
RUN adduser -D user
USER user

