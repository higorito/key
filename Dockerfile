# Usando imagem oficial do Keycloak
FROM quay.io/keycloak/keycloak:24.0.1

# Modo desenvolvimento
ENV KC_DB=dev-mem

# Adiciona usuário admin
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin123

# Build e inicia o Keycloak no modo dev
RUN /opt/keycloak/bin/kc.sh build
CMD ["start-dev"]
