FROM node:18

# Cài ffmpeg để NMS transcode HLS
RUN apt update && apt install -y ffmpeg

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 1935
EXPOSE 8000

CMD ["node", "server.js"]
