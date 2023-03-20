FROM python:3.8-slim


# Set working directory
WORKDIR /app

# Copy requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the model files to the container
COPY stock_model.py .

# Set the command to run the model
CMD ["python", "stock_model.py"]

