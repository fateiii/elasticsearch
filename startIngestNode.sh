#! /bin/sh

pid=elasticsearch-ingest
nodeName=node05.ingest
nodeRack=r5
nodeMaster=false
nodeData=false
nodeIngest=true
nodeDataPath="/home/elasticsearch/node05.ingest/data"
nodeLogsPath="/home/elasticsearch/node05.ingest/logs"
su - elasticsearch -c "sh /usr/local/elasticsearch/elasticsearch-6.8.2/bin/elasticsearch -p $pid -d \
-Enode.name=$nodeName -Enode.attr.rack=$nodeRack -Enode.master=$nodeMaster -Enode.data=$nodeData -Enode.ingest=$nodeIngest \
-Epath.data=$nodeDataPath -Epath.logs=$nodeLogsPath"
