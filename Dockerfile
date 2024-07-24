FROM python:3.10.6-slim-buster


# Set the working directory
WORKDIR /app


# Install required system packages
RUN apt-get update && \
    apt-get install -y ffmpeg libsm6 libxext6
RUN apt-get install build-essential python3-dev -y
RUN apt install git -y

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt


ENTRYPOINT [ "python" ]

# Set the command to run the Python script
CMD ["main.py"]