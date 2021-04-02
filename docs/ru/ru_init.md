# Инициализация PKI

1. Положить файл c названием `vars` в папку `{{VARS_FILE_PATH}}` со следующим содержимым (пример):

```
set_var EASYRSA_REQ_COUNTRY    "RU"
set_var EASYRSA_REQ_PROVINCE   "Moscow"
set_var EASYRSA_REQ_CITY       "Moscow"
set_var EASYRSA_REQ_ORG        "IKRUPIN.COM"
set_var EASYRSA_REQ_EMAIL      "support@ikrupin.com"
set_var EASYRSA_REQ_OU         "Office"
set_var EASYRSA_ALGO           "ec"
set_var EASYRSA_DIGEST         "sha512"
```

2. Затем выполнить:

```
docker run -it --rm \
  -v {{EASYRSA_VOLUME}}:/root/easy-rsa/ \
  -v {{VARS_FILE_PATH}}:/input/vars \
  ikrupincom/gds-easyrsa init
```

где:
- `{{EASYRSA_VOLUME}}`: любой **volume**, в котором создастся необходимая иерархия для EasyRSA;
- `{{VARS_FILE_PATH}}`: путь до файла `vars`, по которому будет инициализирован PKI.