#!/bin/bash

# Add the PPA for OpenJDK 17
sudo add-apt-repository ppa:openjdk-r/ppa

# Update the apt package index
sudo apt-get update

# Install OpenJDK 17
sudo apt-get install -y openjdk-17-jdk

# Set Java 17 as the default Java version
sudo update-alternatives --set java /usr/lib/jvm/java-17-openjdk-amd64/bin/java

# Test the installation
java -version
