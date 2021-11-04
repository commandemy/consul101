###
# Container 1
###

# Download sample data layer service, Counting service
docker exec -d counting wget https://github.com/hashicorp/demo-consul-101/releases/download/0.0.3.1/counting-service_linux_amd64.zip
sleep 7s
# Unzip Counting service
docker exec -d counting unzip counting-service_linux_amd64.zip
sleep 7s
# Start Counting service as background process in container
docker exec -d counting ./counting-service_linux_amd64 &
sleep 1s

###
# Container 2
###

# Download sample data layer service, Dashboard service
docker exec -d dashboard wget https://github.com/hashicorp/demo-consul-101/releases/download/0.0.3.1/dashboard-service_linux_amd64.zip
sleep 7s
# Unzip Counting service
docker exec -d dashboard unzip dashboard-service_linux_amd64.zip
sleep 7s
# Start Dashboard service as background process in container
docker exec -d dashboard ./dashboard-service_linux_amd64 &
sleep 1s