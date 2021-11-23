# scale out
kubectl scale deploy nginx --replicas=3

# image change
kubectl set image deploy nginx nginx=nginx:latest

# autoscale
kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10

# label 
kubectl label deploy nginx test=test

# label check
kubectl get deploy nginx --show-labels

# annotation
kubectl annotate deploy nginx test=tesst

# annotation check
kubectl get deploy nginx -o jsonpath={.metadata.annotations}