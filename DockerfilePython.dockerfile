# Dockerfile
# Use an official Python runtime as parent image
FROM python:3.6.9-slim

# Set the working directory to /app
# in the container
WORKDIR /app

# Install any needed packages specified in requirements.txt
COPY requirements.txt /app/requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy python script into container
COPY app.py /app/app.py

# Run app.py when the container launches
# The -u flag specifies to use the unbuffered output.
# in this way, what's printed by the app is visible on the host
# while the container is running
CMD  ["python", "-u", "app.py", "influxdb", "8086"]
