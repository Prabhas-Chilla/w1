# Use an official OpenJDK runtime as a parent image
FROM openjdk:17

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the Java source code or compiled JAR file to the container
COPY . .

# Compile the Java application (if source code is provided)
# Uncomment the below line if you're copying source files
RUN javac Main.java

# Command to run the Java application
# For a single class with a main method (e.g., Main.java):
CMD ["java", "Main"]

# For a JAR file (e.g., app.jar):
# CMD ["java", "-jar", "app.jar"]
