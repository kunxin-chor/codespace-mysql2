# Use the default GitHub Codespaces image as a base
FROM mcr.microsoft.com/devcontainers/universal:2-linux

# Install MySQL
RUN apt-get update && \
    apt-get install -y mysql-server && \
    service mysql start && \
    mysql_secure_installation
