# Use the official MySQL image as the base image
FROM mysql:latest

# Add your SQL script to the container's initialization folder
COPY ./init.sql /docker-entrypoint-initdb.d/

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=12345
ENV MYSQL_DATABASE=pizz_bd

# Expose the MySQL default port
EXPOSE 3307