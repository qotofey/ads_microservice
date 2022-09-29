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
