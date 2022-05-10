# Specify a base image
FROM node:14-alpine

# define a working directory
WORKDIR /usr/app

# Install some depenendencies

# copying the files from local to container
COPY ./package.json ./
RUN npm install
COPY ./ ./



# Default command
CMD ["npm", "start"]