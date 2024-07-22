#!/bin/bash

# Install required system dependencies
apt-get update
apt-get install -y libgl1-mesa-glx libglib2.0-0 tesseract-ocr tesseract-ocr-eng

# Execute the main function script
python main.py
