FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

# Make sure entrypoint.sh is executable
# RUN chmod +x entrypoint.sh

# Expose whatever port your app uses
EXPOSE 8080

# Run the entrypoint script which generates config.env and starts the app
# ENTRYPOINT ["./entrypoint.sh"]

CMD ["node", "./dist/server.js"]