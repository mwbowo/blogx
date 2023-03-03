<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About BlogX

Blog? Bukan. Ini BlogX. Sebuah aplikasi yang dibuat menggunakan [Laravel](https://laravel.com) untuk membuat blog. 

Jadi BlogX itu apa?

Ya BlogX itu BlogX

## Instalation

Untuk menginstal Blogx, lakukan ini pada environment

1. Clone repository
```
git clone https://github.com/tombo0/blogx.git
cd blogx
```

2. Install package
```
composer install
```

3. Configure file .env
```
cp .env.example .env
```
set like this
```
...
DB_DATABASE=blogx
DB_USERNAME=blogx
DB_PASSWORD=blogx
...
```


4. Generate key
```
php artisan key:generate
```

5. Migrate database 
```
php artisan migrate
```

6. Deploy app 
```
php artisan serve
```

## Sail
Dockerize Laravel Environment
1. Set the MySQL host to `mysql`
```
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
```

2. Sail up :boat:
```
vendor/bin/sail up
```

3. Migrate database
```
vendor/bin/sail artisan migrate
```

## Credit

Create a Blog in Laravel and Livewire & Bowo
>[Devdojo](https://devdojo.com/tnylea/create-a-blog-in-laravel-and-livewire)
