# Use an official, lightweight Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container to /app
WORKDIR /app

# Install Flask directly 
# (Note: For larger projects, it's best practice to COPY a requirements.txt and run pip install -r requirements.txt)
RUN pip install --no-cache-dir flask

# Copy your Python file into the container at /app
# This assumes your Python file is named app.py
COPY app.py .

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Command to run the application when the container launches
CMD ["python", "app.py"]
