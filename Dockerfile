FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --legacy-peer-deps && \
    npm install @fortawesome/fontawesome-svg-core \
    @fortawesome/free-solid-svg-icons \
    @fortawesome/free-brands-svg-icons \
    @fortawesome/react-fontawesome \
    --legacy-peer-deps

COPY . .

RUN npm run build

RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "build", "-l", "3000"]