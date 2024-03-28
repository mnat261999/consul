FROM consul:1.15

# Copy your Consul configuration file into the container
COPY consul-config.json consul-config.json

# Expose necessary ports
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8500 8600 8600/udp

# Command to start Consul agent
CMD ["agent", "-config-file=consul-config.json"]
