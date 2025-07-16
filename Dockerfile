# Use a standard Python image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app's code
COPY . .

# Expose the port Hugging Face uses
EXPOSE 7860

# The command to run your Streamlit app on the correct port
CMD ["streamlit", "run", "your_app_name.py", "--server.port=7860"]
