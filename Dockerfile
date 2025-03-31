# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Install OpenSSH server
RUN apt update && apt install -y openssh-server

# Create the directory for the sshd process
RUN mkdir /var/run/sshd

# Set the root password for SSH (change this password)
RUN echo 'root:yourpassword' | chpasswd

# Expose the SSH port
EXPOSE 22

# Start the SSH daemon
CMD ["/usr/sbin/sshd", "-D"]
