if [ $# -ne 2 ]
    then
      echo "You should use ./setpassword.sh usename password"
      exit
fi
echo -n $1 > ./username
echo -n $2 > ./password
kubectl create secret generic postgresql-secret --from-file=POSTGRES_USER=./username --from-file=POSTGRES_PASSWORD=./password
rm ./username
rm ./password
kubectl describe secrets/postgresql-secret
