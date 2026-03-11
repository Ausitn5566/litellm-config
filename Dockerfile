FROM ghcr.io/berriai/litellm:main-stable
LABEL "language"="python"
WORKDIR /app
RUN mkdir -p /etc/litellm
COPY config.yaml /etc/litellm/config.yaml
RUN chmod 644 /etc/litellm/config.yaml
EXPOSE 4000
CMD ["litellm", "--config", "/etc/litellm/config.yaml", "--port", "4000", "--host", "0.0.0.0"]
