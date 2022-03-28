## Create nginx container with TLS enabled

Create certificates
```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./certs/default.key -out ./certs/default.crt
```

Test the image
```
docker run -it -v $PWD/conf:/etc/nginx/conf.d/ -v $PWD/certs:/certs -p 8080:80 -p 8443:443 nginx
```

```
curl http://127.0.0.1:8080
...


curl https://127.0.0.1:8443
...
```


