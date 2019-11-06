docker build -t jenkins:v.2.190.2 .
docker stack deploy -c stack.yml jenkins
