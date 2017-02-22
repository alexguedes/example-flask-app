# example-flask-app

### To push app 
```
cf push example-flask-app
```

### To add and bind MySQL service
```
cf create-service cleardb type flask-app-db
cf bind-service example-flask-app flask-app-db
cf restart example-flask-app
```

### How to scale app horizontally
```
cf scale -i 2
```
