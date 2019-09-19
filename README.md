# Spring Boot Kubernetes samples

## Single service example

This is example of single Spring boot application deployment running behind NodePort service.

#### Clone this branch:
```sh
$ git clone https://github.com/thenswan/spring-boot-k8s-samples.git
```

#### Building and deploying service to local kubernetes node:
```
$ cd spring-boot-k8s-samples/alpha
$ ./deploy-to-k8s.sh
```

##### You can check out relevant commands in sh files, but basically it will:
1. Build java .jar file
2. Build docker image
3. Create kubernetes deployment
4. Create kubernetes service

#### To tear down what you created, run:
```sh
$ cd spring-boot-k8s-samples/alpha
$ ./clean-up.sh
```

##### This will:
1. Remove built java .jar file
2. Remove docker image
3. Remove kubernetes deployment
4. Remove kubernetes service

#### To check host and port of the app, run: 
```sh
kubectl get svc alpha -o wide
```

##### You will get output something like this:
```
NAME    TYPE       CLUSTER-IP     EXTERNAL-IP   PORT(S)          AGE   SELECTOR
alpha   NodePort   10.105.32.21   <none>        8081:31552/TCP   25s   run=alpha
```

Note that EXTERNAL-IP denoted as `<none>`, url in this case will be: `localhost:31552/api/alpha/hello`

#### Check out external ip and port, then check out api:
```sh
curl host:port/api/alpha/hello
```

## To dive deeper
Check out sh files and comments

## Issues and PRs
...are very welcome!