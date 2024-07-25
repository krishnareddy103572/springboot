For Mac

1.brew installation  process 
    1.1.Go homebrew website too will find one link below 

	the link is : /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)”

     1.2.Paste and Enter in cmd prompt
      1.3. After we will find this in terminal

==> Next steps:
- Run these two commands in your terminal to add Homebrew to your PATH:
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/krishna.karapureddy/.bash_profile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh

1.4.Run the w.r.t commands 
1.5.Then we are ready with homebrew



2. Minikube and kubectl installation

2.1.brew install minikube 
2.2.brew install docker(for virtualisation)
2.3.brew install kubectl


3.Running and deploying in our project(cd ./project)

3.1. minikube start
3.2.minikube status
3.3.eval $(minikube docker-env)
3.4. create a docker image and run 

3.5.create a deployment.yaml file
Just like below and you can change your image name and project name

apiVersion: apps/v1
kind: Deployment
metadata:
  name: springboot
spec:
  replicas: 2
  selector:
    matchLabels:
      app: springboot
  template:
    metadata:
      labels:
        app: springboot
    spec:
      containers:
        - name: springboot
          image: sbk8s
          imagePullPolicy: IfNotPresent
          ports:
            - containerPort: 8080


3.6.  
kubectl apply -f k8s.yaml

3.7. kubectl get deployment
3.8.kubectl get pods
3.9.kubectl logs (pod_name)
4.0.ls -l
4.1.create service.yaml file like below and you have to give target port as springboot port(like I config here as 7777(thala for reason)
kubectl apply -f k8s-service.yaml

apiVersion: v1
kind: Service
metadata:
  name: springboot
spec:
  selector:
    app: springboot
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 7777
  type: NodePort




4.2. kubectl get sec
4.3. kubectl get nodes -o wide 
4.4.minkiube ip
4.5.minikube dashboard

4.6. You are K8s dashboard










