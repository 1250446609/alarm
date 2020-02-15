module alarm

replace github.com/kongyixueyuan.com/alarm/sdkInit => /home/ubuntu/go/src/github.com/kongyixueyuan.com/alarm/sdkInit

replace github.com/kongyixueyuan.com/alarm/service => /home/ubuntu/go/src/github.com/kongyixueyuan.com/alarm/service

replace github.com/kongyixueyuan.com/alarm/web/controller => /home/ubuntu/go/src/github.com/kongyixueyuan.com/alarm/web/controller

replace github.com/kongyixueyuan.com/alarm/web => /home/ubuntu/go/src/github.com/kongyixueyuan.com/alarm/web

go 1.13

require (
	github.com/Shopify/sarama v1.26.1 // indirect
	github.com/fsouza/go-dockerclient v1.6.1 // indirect
	github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e // indirect
	github.com/hashicorp/go-version v1.2.0 // indirect
	github.com/hyperledger/fabric v1.2.0
	github.com/hyperledger/fabric-amcl v0.0.0-20200128223036-d1aa2665426a // indirect
	github.com/kongyixueyuan.com/alarm/sdkInit v0.0.0-00010101000000-000000000000
	github.com/kongyixueyuan.com/alarm/service v0.0.0-00010101000000-000000000000
	github.com/kongyixueyuan.com/alarm/web v0.0.0-00010101000000-000000000000
	github.com/kongyixueyuan.com/alarm/web/controller v0.0.0-00010101000000-000000000000
	github.com/op/go-logging v0.0.0-20160315200505-970db520ece7 // indirect
)
