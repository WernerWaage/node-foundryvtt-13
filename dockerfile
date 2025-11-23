# Use an current node alpine image
FROM node:current-alpine3.19

# External portmapping done when running the image!
# make the default port accessible (you would need to change this to match your config.js in you data directory if you change from default)
EXPOSE 30000

# The location of main.js was changed in V13
# run node when the container launches. assume path will be mapped to content
CMD ["node", "/pkg/main.js", "--headless", "--dataPath=/data" ]
