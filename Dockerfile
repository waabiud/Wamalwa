FROM quay.io/lyfe00011/md:beta

# Clone the app into the working directory
RUN git clone https://github.com/lyfe00011/levanter.git /app
WORKDIR /app

# Install dependencies
RUN yarn install

# Expose port (optional, e.g., 3000)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
