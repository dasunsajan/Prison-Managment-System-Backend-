# Node.js base image eka (lightweight version eka)
FROM node:20-alpine

# Container ekathule work karana folder eka
WORKDIR /app

# package.json eka palamuwenma copy karanawa (dependencies cache karanna)
COPY package*.json ./

# Dependencies install karanawa
RUN npm install

# Wenat okkoma files copy karanawa
COPY . .

# Backend eka run wena port eka
EXPOSE 5000

# Container eka start unama run wena command eka
CMD ["node", "server.js"]