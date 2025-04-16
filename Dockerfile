FROM quay.io/keycloak/keycloak:24.0.1

ENV KC_DB=postgres

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin123

EXPOSE 8080

RUN /opt/keycloak/bin/kc.sh build
CMD ["start"]