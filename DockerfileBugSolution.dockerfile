FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip
COPY . /app
WORKDIR /app
RUN pip3 install --no-cache-dir -r requirements.txt # Added to resolve missing dependencies
EXPOSE 8000
CMD ["python3", "-m", "http.server", "8000"]