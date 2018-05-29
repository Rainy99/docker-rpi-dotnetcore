# Use ubuntu arm as base image
FROM arm32v7/ubuntu:16.04
# Update packages
RUN apt-get update
# Installation dependencies
RUN apt-get install curl wget libunwind8 gettext
# Download .NetCore arm runtime
RUN wget https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-runtime-latest-linux-arm.tar.gz
# Create an installation folder
RUN mkdir -p /opt/dotnet
# Extract to the installation folder
RUN tar -axf dotnet-runtime-latest-linux-arm.tar.gz -C /opt/dotnet
# Create link
RUN ln -s /opt/dotnet/dotnet /usr/local/bin/dotnet
