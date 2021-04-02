# Получение копии сертификата

```
docker run -it --rm \
  -v {{EASYRSA_VOLUME}}:/root/easy-rsa/ \
  -v {{OUTPUT_DIR}}:/output \
  ikrupincom/gds-easyrsa get-ca
```

где:
- `{{EASYRSA_VOLUME}}`: **volume**, в котором была создана необходимая иерархия для EasyRSA во время **Инициализации PKI**;
- `{{OUTPUT_DIR}}`: любая папка, в которой появится файл **ca.crt**;