FROM haproxy:1.5

RUN groupadd -r haproxy && useradd -r -g haproxy haproxy
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
