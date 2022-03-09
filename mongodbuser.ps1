mkdir C:\mongodb\logs
mongod --logpath C:\mongodb\logs\mongo.log --install --serviceName MongoDB
net start MongoDB
mongo admin --eval "db.getSiblingDB('admin').createUser({user: 'grandadmin', pwd: 'grand', roles: ['readWrite']})"
Stop-Process -Name "mongod" -Confirm:$false -Force
mongod --bind_ip_all
