# HBase
Run Aapache HBase with Docker

# Standalone mode

docker run -it --net host --hostname localhost --name hbase alamfard/hbase:standalone

# Pseudo-Distributed Mode

docker network create -d overlay swarm-net

docker service create --name zookeeper --hostname zookeeper --network swarm-net zookeeper

docker service create --name hbase --hostname hbase --network swarm-net alamfard/hbase:pseudo-distributed
