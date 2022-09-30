# Ads Microservice
Функциональность микросервиса:
- просмотр рекламных объявлений
- создание рекламного объявления (для аутентифицированных пользователей)

Данный микросервис взаимодействует с другими микросервисами:
- Auth Microservice (для проверки подлинности токена пользователя)
- Geocode Microservice 

```bash
rvm install 2.7.6
rvm ruby-2.7.6 do rvm gemset create ads_microservice
rvm --ruby-version use 2.7.6@ads_microservice
```

```bash
bundle add roda
bundle add sequel

bundle add byebug --group "development, test"
```

Service Objects:
```
lib/ads_microservice/services
```

Query Objects:
```
lib/ads_microserice/queries
```

Form Objects:
```
lib/ads_microservice/forms
```
