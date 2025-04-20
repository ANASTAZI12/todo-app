FROM node:12-alpine 
#install git
RUN apk add --no-cache git
#clone the repository
RUN git clone-q https://github.com/ANASTAZI12/todo-app
#set the working directory to the app directory
WORKDIR /todo-app
#install dependecies
RUN yarn install --production
#start the application
CMD ["node","/src/index.js"]
