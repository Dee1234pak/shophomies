# Set the base image to use
FROM docker.io/library/ubuntu:18.04

# Set the working directory in the container
WORKDIR /home/developer/project

# Install necessary dependencies
RUN apt update && apt install -y curl git unzip xz-utils zip libglu1-mesa openjdk-8-jdk wget

# Add a new user named 'developer'
RUN useradd -ms /bin/bash developer

# Switch to the developer user
USER developer

# Clone Flutter repository
RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1

# Set Flutter and Dart environment variables
ENV PATH="/home/developer/flutter/bin:/home/developer/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Clone your project
RUN git clone https://github.com/Dee1234pak/shophomies project

# Set the ANDROID_HOME environment variable
ENV ANDROID_HOME=C:\\Users\\ASUS\\AppData\\Local\\Android\\Sdk

# Ensure Flutter is up to date
RUN flutter upgrade

# Run flutter doctor to check for any missing dependencies
RUN flutter doctor

# Run flutter pub get to get dependencies
RUN flutter pub get

# Build the APK
RUN flutter build apk
