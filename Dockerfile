FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# Make sure entrypoint.sh is executable
RUN chmod +x entrypoint.sh

# Expose whatever port your app uses
EXPOSE 8080

# Run the entrypoint script which generates config.env and starts the app
ENTRYPOINT ["./entrypoint.sh"]

RUN npm run dev