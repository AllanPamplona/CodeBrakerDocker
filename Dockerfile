# Use an official Python runtime as a parent image
FROM node:10.3.0

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD ./back /app

# Install any needed packages specified in requirements.txt
RUN npm install

# Make port 80 available to the world outside this container
EXPOSE 8081
EXPOSE 3000

# Run app.py when the container launches
CMD ["npm", "run", "start"]
