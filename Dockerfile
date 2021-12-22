FROM php:8.1.1-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    vim  \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install mbstring exif gd

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN useradd -G www-data,root -u 1000 -d /home/dan dan
RUN mkdir -p /home/dan/.composer && \
    chown -R dan:dan /home/dan

USER dan