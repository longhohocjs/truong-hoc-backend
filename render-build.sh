#!/usr/bin/env bash
# Thoát ngay nếu có lỗi
set -o errexit

composer install --no-dev --optimize-autoloader

# Xóa và tạo lại cache để tối ưu tốc độ
php artisan config:cache
php artisan route:cache
php artisan view:cache