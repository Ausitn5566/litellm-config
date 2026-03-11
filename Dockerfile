FROM ghcr.io/berriai/litellm:main-latest
LABEL "language"="python"
WORKDIR /app

# 創建配置目錄
RUN mkdir -p /etc/litellm

# 複製配置文件
COPY config.yaml /etc/litellm/config.yaml

# 設置權限
RUN chmod 644 /etc/litellm/config.yaml

EXPOSE 4000

CMD ["litellm", "--config", "/etc/litellm/config.yaml", "--port", "4000"]
