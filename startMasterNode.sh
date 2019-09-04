#! /bin/sh

pid=elasticsearch-master
nodeName=node05.master
nodeRack=r5
nodeMaster=true
nodeData=false
nodeIngest=false
nodeDataPath="/home/elasticsearch/node05.master/data"
nodeLogsPath="/home/elasticsearch/node05.master/logs"
cors=true
corsOrigin="\"/https?:\/\/localhost(:[0-9]+)?/\""
su - elasticsearch -c "sh /usr/local/elasticsearch/elasticsearch-6.8.2/bin/elasticsearch -p $pid -d \
-Enode.name=$nodeName -Enode.attr.rack=$nodeRack -Enode.master=$nodeMaster -Enode.data=$nodeData -Enode.ingest=$nodeIngest \
-Epath.data=$nodeDataPath -Epath.logs=$nodeLogsPath \
-Ehttp.cors.enabled=$cors -Ehttp.cors.allow-origin=$corsOrigin"
