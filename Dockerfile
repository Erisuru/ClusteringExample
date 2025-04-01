# Use an official Python image as a base
FROM python:3.8-slim

ENV PIP_TIMEOUT=100

# Set the working directory in the container
WORKDIR /FunnyDemoFinal

# Copy the requirements file
COPY requirements.txt .

COPY FunnyDemoFinal/templates ./templates

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Copy the dataset file
COPY FunnyDemoFinal/dataset1.csv .

# Expose the port your application will use
EXPOSE 8000

# Run the command to start your application
CMD ["python", "FunnyDemoFinal/funny.py"]
