FROM python:3.11-slim

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3-opencv libgl1-mesa-glx libglib2.0-0 && \
    rm -rf /var/lib/apt/lists/*

# Copy your function code to the container
COPY ./src /usr/local/src

# Set the working directory
WORKDIR /usr/local/src

# Install any additional Python dependencies
RUN pip install --no-cache-dir -r /usr/local/src/requirements.txt

# Set the entry point for the function
ENTRYPOINT ["python3", "main.py"]
