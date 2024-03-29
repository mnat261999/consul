# Base image
FROM alpine:latest

# Install necessary dependencies
RUN apk --no-cache add wget unzip bash curl

# Install Consul
RUN wget https://releases.hashicorp.com/consul/1.11.0/consul_1.11.0_linux_amd64.zip && \
    unzip consul_1.11.0_linux_amd64.zip && \
    mv consul /usr/local/bin/ && \
    rm consul_1.11.0_linux_amd64.zip

# Install Git
RUN apk --no-cache add git

# Install Docker
RUN apk --no-cache add docker-cli

# Install Vercel CLI
RUN npm install -g vercel

# Expose necessary ports
EXPOSE 8500

# Start Consul
CMD ["consul", "agent", "-dev"]
