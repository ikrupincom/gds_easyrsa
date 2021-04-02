# Подпись

1. Положить `{{REQ_FILE_NAME}}.req` файл в папку `{{INPUT_DIR}}`
2. Затем выполнить:

```
docker run -it --rm \
  -v {{EASYRSA_VOLUME}}:/root/easy-rsa/ \
  -v {{INPUT_DIR}}:/input \
  -v {{OUTPUT_DIR}}:/output \
  ikrupincom/gds-easyrsa sign {{REQ_FILE_NAME}} {{TYPE}}
```  

где:
- `{{EASYRSA_VOLUME}}`: **volume**, в котором была создана необходимая иерархия для EasyRSA во время **Инициализации PKI**;
- `{{INPUT_DIR}}`, `{{OUTPUT_DIR}}`: любые две папки для входных и выходных данных;
- `{{TYPE}}`: тип подписи `client` или `server`.

3. Созданный `{{REQ_FILE_NAME}}.crt` будет лежать в `{{OUTPUT_DIR}}`, а также в `{{EASYRSA_VOLUME}}/pki/issued`.