FROM azul-zulu:17-jre

WORKDIR /app

# Download Lavalink
RUN apt-get update && apt-get install -y wget && \
    wget https://github.com/lavalink-devs/Lavalink/releases/download/4.0.6/Lavalink.jar

COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
