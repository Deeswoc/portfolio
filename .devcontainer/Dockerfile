# Project build breaks on node versions above 14
FROM node:14

# Install eslint for docker development environment
RUN npm install -g eslint prettier

# Install node modules for project and store them in a location so they aren't overwritten
# The modules are then moved into the working direcotry after the project directory is mounted
# Tailwind css files are also built
# RUN mkdir /home/app-cache
# WORKDIR /home/app-cache
# COPY package.json ./
# RUN npm install
# COPY styles/index.css ./styles/
# COPY tailwind.config.js ./
# RUN npm run build:tailwind

# Create project directory and set it as the working directory
# Set owner as node
RUN mkdir -p /home/app
WORKDIR /home/app
RUN chown -R node.node /home/app
COPY entrypoint.sh /home/app-cache/