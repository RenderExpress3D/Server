FROM eclipse-temurin:25-jre-noble
RUN apt-get update && apt-get install -y curl zip && rm -rf /var/lib/apt/lists/*
WORKDIR /server
COPY . .
RUN chmod +x playit-legacy start.sh
EXPOSE 25565/tcp 19132/udp 19133/udp
CMD ./start.sh & ./playit-legacy & cd /server/Geyser-Celular && java -jar Geyser.jar
