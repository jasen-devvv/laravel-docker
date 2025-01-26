FROM php:8.2-fpm

# Add variable UID and GID
ARG UID
ARG GID
ARG USERNAME

# Create user and group
RUN groupadd -g $GID $USERNAME && \
    useradd -m -u $UID -g $GID -s /bin/bash $USERNAME

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# COPY composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Set user
USER $USERNAME

# Set working directory
WORKDIR /var/www/html

# Expose port 9000
EXPOSE 9000

# Start php-fpm server
CMD ["php-fpm"]