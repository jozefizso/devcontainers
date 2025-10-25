FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /etc/apt/keyrings && \
    gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 0xB8DC7E53946656EFBCE4C1DD71DAEAAB4AD4CAB6 && \
    gpg --export 0xB8DC7E53946656EFBCE4C1DD71DAEAAB4AD4CAB6 | gpg --dearmor -o /etc/apt/keyrings/ondrej-php.gpg && \
    echo "deb [signed-by=/etc/apt/keyrings/ondrej-php.gpg] http://ppa.launchpad.net/ondrej/php/ubuntu noble main" \
      > /etc/apt/sources.list.d/ondrej-php.list

# Install Apache 2.4 and PHP 5.6
RUN apt update && \
    apt-get install -y --no-install-recommends apache2 php5.6 php5.6-cli php5.6-common && \
    rm -rf /var/lib/apt/lists/*

# Install composer
RUN curl -sSL https://getcomposer.org/installer | php -- --2.2 \
    && chmod +x composer.phar \
    && mv composer.phar /usr/local/bin/composer
