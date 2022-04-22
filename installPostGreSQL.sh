kubectl diff -f Postgresql

read -p "Are you sure to install these components? Press Y/y to continue" -n 1 -r
echo    
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
echo "install PostGreSQL"
kubectl apply -f ./Postgresql/pvc.yaml
kubectl apply -f ./Postgresql/deployment.yaml
kubectl apply -f ./Postgresql/service.yaml

kubectl get deployment postgres
kubectl get svc postgres-service