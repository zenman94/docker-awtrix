FROM openjdk:8-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    wget \
 && rm -rf /var/lib/apt/lists/*
# Download Awtrix Server jar
RUN wget -q -O /app/awtrix.jar https://blueforcer.de/awtrix/beta/awtrix.jar


# Web Ui Server Port
EXPOSE 7000

# Start Server
CMD ["java","-jar","/app/awtrix.jar"]