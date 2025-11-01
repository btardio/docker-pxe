FROM alpine:3.22.2

# Install the necessary packages
RUN apk add --no-cache \
  tftp-hpa \
  dnsmasq \
  libcap \
  wget

WORKDIR /tmp

RUN mkdir -p /var/lib/tftpboot

# Note: This isn't needed, it is using its bootcode.bin file
# COPY bootcode.bin /

# Configure DNSMASQ
COPY etc/ /etc/

# Start dnsmasq. It picks up default configuration from /etc/dnsmasq.conf and

RUN setcap cap_net_bind_service=+ep $(which dnsmasq)

COPY entrypoint.sh /entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]

#CMD ["--dhcp-range=192.168.1.1,proxy"]
