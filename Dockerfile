# Use the official OpenJDK image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR usr/src/app

# Copy the current directory contents into the container
COPY . .

# Compile the Java program
RUN javac aoo.java

# Run the Java program
CMD ["java", "aoo"]
