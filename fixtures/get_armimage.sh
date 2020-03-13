sudo docker pull pesicsasa/fabric-couchdb:latest
sudo docker pull pesicsasa/fabric-orderer:latest
sudo docker pull pesicsasa/fabric-ca:latest
sudo docker pull pesicsasa/fabric-peer:latest
sudo docker pull pesicsasa/fabric-ccenv:latest
sudo docker pull pesicsasa/fabric-tools:latest
sudo docker pull pesicsasa/fabric-baseos:latest
sudo docker pull pesicsasa/fabric-zookeeper:latest
sudo docker pull pesicsasa/fabric-kafka:latest

sudo docker tag pesicsasa/fabric-baseos:latest hyperledger/fabric-baseos:arm64-latest
sudo docker tag pesicsasa/fabric-orderer:latest hyperledger/fabric-orderer:latest
sudo docker tag pesicsasa/fabric-peer:latest hyperledger/fabric-peer:latest
sudo docker tag pesicsasa/fabric-tools:latest hyperledger/fabric-tools:latest
sudo docker tag pesicsasa/fabric-couchdb:latest hyperledger/fabric-couchdb:latest
sudo docker tag pesicsasa/fabric-ccenv:latest hyperledger/fabric-ccenv:latest
sudo docker tag pesicsasa/fabric-ca:latest hyperledger/fabric-ca:latest
sudo docker tag pesicsasa/fabric-zookeeper:latest hyperledger/fabric-zookeeper:latest
sudo docker tag pesicsasa/fabric-kafka:latest hyperledger/fabric-kafka:latest

docker rmi pesicsasa/fabric-peer:latest
docker rmi pesicsasa/fabric-tools:latest
docker rmi pesicsasa/fabric-ca:latest
docker rmi pesicsasa/fabric-orderer:latest
docker rmi pesicsasa/fabric-ccenv:latest
docker rmi pesicsasa/fabric-baseos:latest
docker rmi pesicsasa/fabric-zookeeper:latest
docker rmi pesicsasa/fabric-kafka:latest
docker rmi pesicsasa/fabric-couchdb:latest


