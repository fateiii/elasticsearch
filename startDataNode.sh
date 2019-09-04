#! /bin/sh

pid=elasticsearch-data
nodeName=node05.data
nodeRack=r5
nodeMaster=false
nodeData=true
nodeIngest=false
nodeDataPath="/home/elasticsearch/node05.data/data"
nodeLogsPath="/home/elasticsearch/node05.data/logs"
su - elasticsearch -c "sh /usr/local/elasticsearch/elasticsearch-6.8.2/bin/elasticsearch -p $pid -d \
-Enode.name=$nodeName -Enode.attr.rack=$nodeRack -Enode.master=$nodeMaster -Enode.data=$nodeData -Enode.ingest=$nodeIngest \
-Epath.data=$nodeDataPath -Epath.logs=$nodeLogsPath"
