# syntax=docker/dockerfile:1.7

ARG HERMES_BASE_IMAGE=harbor.api-api-api.com/hermes-agent/gateway:1733cb3a13bb-slim2
FROM --platform=$TARGETPLATFORM ${HERMES_BASE_IMAGE}

ARG BUILD_DATE
ARG VCS_REF

LABEL org.opencontainers.image.title="hermes-agent" \
      org.opencontainers.image.description="Hermes Agent gateway runtime image" \
      org.opencontainers.image.source="https://github.com/anomaly51/hermes-agent" \
      org.opencontainers.image.revision="${VCS_REF}" \
      org.opencontainers.image.created="${BUILD_DATE}"
