# Use a lightweight Node.js image based on Alpine Linux
FROM node:20-alpine3.19
RUN apk update && apk upgrade --no-cache

# Create app directory
# WORKDIR /pkg
# Install app dependencies

# External portmapping done when running the image!
# make the default port accessible (you would need to change this to match your config.js in you data directory if you change from default)
EXPOSE 30000

# The location of main.js was changed in V13
# run node when the container launches. assume path will be mapped to content
CMD ["node", "/pkg/main.js", "--headless", "--dataPath=/data" ]
