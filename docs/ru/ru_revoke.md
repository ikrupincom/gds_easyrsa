# Отзыв сертификата

1. Выполняем:

```
docker run -it --rm \ 
  -v {{EASYRSA_VOLUME}}:/root/easy-rsa/ \
  -v {{OUTPUT_DIR}}:/output \
  ikrupincom/gds-easyrsa revoke {{NAME}}
```

где:
- `{{EASYRSA_VOLUME}}`: **volume**, в котором была создана необходимая иерархия для EasyRSA во время **Инициализация PKI**
- `{{OUTPUT_DIR}}`: любая папка, в которой появится файл **crl.pem**
- `{{NAME}}` : название сертификата, который нужно отозвать