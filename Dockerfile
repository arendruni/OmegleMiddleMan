FROM node:10

# App directory
WORKDIR /usr/src/app

# copy package.json and package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy app
COPY . .

# expose port
EXPOSE 3000

# run the app
CMD ["node", "app.js"]