server
{
    listen 80;
    server_name ${nginx_config:server_name};

    location /
    {
        include include/proxy.default;
        proxy_pass http://localhost:${nginx_config:mgmt_port};
    }
}
