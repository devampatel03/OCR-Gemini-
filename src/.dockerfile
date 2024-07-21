FROM appwrite/runtime-for-python:3.11

# Install OpenCV and dependencies
RUN apt-get update && \
    apt-get install -y python3-opencv libgl1-mesa-glx && \
    rm -rf /var/lib/apt/lists/*

# Copy your function code to the container
COPY ./src /usr/local/src

# Set the working directory
WORKDIR /usr/local/src

# Set the entry point for the function
ENTRYPOINT ["python3", "main.py"]
