FROM debian:buster

RUN apt update
RUN apt install -y curl wget unzip sudo nano

RUN apt install -y lsb-release ca-certificates apt-transport-https software-properties-common gnupg2
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/sury-php.list
RUN curl -fsSL  https://packages.sury.org/php/apt.gpg| gpg --dearmor -o /etc/apt/trusted.gpg.d/sury-keyring.gpg

RUN apt update
RUN apt install -y php8.0 php8.0-cli php8.0-mbstring php8.0-mysql php8.0-zip php8.0-dom
RUN wget -O composer-setup.php https://getcomposer.org/installer
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

COPY . /blogx

WORKDIR /blogx

RUN composer install

COPY .env.example .env

RUN php artisan key:generate
RUN php artisan migrate
CMD ["php","artisan","serve","--host=0.0.0.0"]
