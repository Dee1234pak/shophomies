#FROM ubuntu:latest
#LABEL authors="ASUS"
#
#ENTRYPOINT ["top", "-b"]


FROM ubuntu:18.04

# Prerequisites
RUN apt update && apt install -y curl git unzip xz-utils zip libglu1-mesa openjdk-8-jdk wget

# Set up new user
RUN useradd -ms /bin/bash developer
USER developer
WORKDIR /home/developer

# Prepare Android directories and system variables
RUN mkdir -p Android/sdk
ENV ANDROID_SDK_ROOT /home/developer/Android/sdk

# Install Flutter SDK
RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1
ENV PATH="/home/developer/flutter/bin:${PATH}"

# Clone your Flutter project into the container
RUN git clone <your_project_repository_url> project

# Build the Flutter project
WORKDIR /home/developer/project
RUN flutter pub get
RUN flutter build apk

# Run the Flutter project
CMD ["flutter", "run"]
