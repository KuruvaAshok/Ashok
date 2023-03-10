FROM python:3.7.2-stretch

# Set the working directory to /AppPython
WORKDIR /AppPython

# Copy requirements.txt file in current folder into the container at /AppPython 
ADD requirements.txt .

# Install the dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Jupyter listens port: 1234
EXPOSE 1234 
