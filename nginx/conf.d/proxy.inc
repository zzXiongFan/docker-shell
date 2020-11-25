proxy_set_header Host $host;
proxy_set_header X-Real-IP $remote_addr;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header X-Forwarded-Proto $scheme;
proxy_set_header X-Forwarded-Port $server_port;
proxy_redirect default;
proxy_http_version 1.1;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection upgrade;

proxy_connect_timeout 5s;
proxy_read_timeout 30s;
proxy_send_timeout 30s;
# buffer for header
proxy_buffer_size 8k;
# buffer for body
proxy_buffers 16 16k;
proxy_busy_buffers_size 32k;
# buffer full
#proxy_max_temp_file_size 0;
