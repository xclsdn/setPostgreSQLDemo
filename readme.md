### requirement

We would like to produce a Go/Python/Bash CLI that automates deployment of a Postgres database to an existing Kubernetes cluster, potentially with the capability to tweak a couple parameters of the Postgres configuration. Feel free to include any open-source components you wish in the solution.

Solution step

1. Set database password username using Secret
2. Create Persistent Volume Claim 
3. Creat Deployment of PostgreSQL  
4. Creat a service to expose the PostgresSQL 

### Install PostgreSQL

1. install kubectl
2. get the exiting Kubernetes cluster scridential.
3. check kubectl get nodes corrected.
4. git clone the repo
5. run ./setPassword.sh [username] [password] to setup PostgreSQL username and password
6. run ./installPostGreSQL.sh to install PostGreSQL on kubernets 


### delete PostgreSQL

1. run deletePostgrSQL.sh
2. or run the command `kubectl delete -f Postgresql` in the repo directory
3. run deleteSecret.sh to delete Secret.
4. or run command `kubectl delete secrets/postgresql-secret` to delete Secret.




Tips.

set username and password
Beacause in Secret file, the item need encoded in Base64, so use the command in bash to get base64-encoded secret
echo -n "username" | base64


