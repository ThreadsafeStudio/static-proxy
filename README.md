# static-proxy
Simple, configurable reverse proxy using Nginx

## Docker
    docker pull pascalc/static-proxy

## Usage

1. Set the environment variable `PROXY` to where you want to Nginx to proxy `/api` to.
2. Mount any static files you want to serve into `/var/www/html`

## Example docker-compose

    version: '2'
    services:
      nginx:
        image: pascalc/static-proxy
        ports:
         - "8000:80"
        volumes:
         - "./public:/var/www/html"
        environment:
         - PROXY=http://echo.jsontest.com/
