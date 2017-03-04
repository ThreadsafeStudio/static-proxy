echo "Proxying /api -> ${PROXY}"
envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
echo "Starting nginx..."
nginx -g "daemon off;"
