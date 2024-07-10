FROM quay.io/keycloak/keycloak:latest as builder

ENV KC_HEALTH_ENABLED=false
ENV KC_METRICS_ENABLED=false

# Configure a database vendor
ENV KC_DB=dev-file

WORKDIR /opt/keycloak
# for demonstration purposes only, please make sure to use proper certificates in production instead
RUN keytool -genkeypair -storepass password -storetype PKCS12 -keyalg RSA -keysize 2048 -dname "CN=server" -alias server -ext "SAN:c=DNS:localhost,IP:127.0.0.1" -keystore conf/server.keystore
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:latest
COPY --from=builder /opt/keycloak/ /opt/keycloak/

ENV KC_DB=dev-file
ENV KC_HOSTNAME_URL="https://auth.interpause.dev"
ENV KC_HOSTNAME_ADMIN_URL="https://nixrobo.home.arpa:8443"
ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT_BACKCHANNEL=false
ENV KC_HOSTNAME_STRICT=false
ENV KC_PROXY_HEADERS="forwarded"
EXPOSE 8080
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
