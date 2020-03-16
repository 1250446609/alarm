package main

import (
	"os"
	"fmt"
	"github.com/kongyixueyuan.com/alarm/sdkInit"

	"github.com/kongyixueyuan.com/alarm/service"

	"github.com/kongyixueyuan.com/alarm/web/controller"
	"github.com/kongyixueyuan.com/alarm/web"
)

const (
	configFile = "config.yaml"
	initialized = false
	SimpleCC = "AlarmCC"
)

func main()  {
	initInfo := &sdkInit.InitInfo{

		ChannelID: "kevinkongyixueyuan",
		ChannelConfig: os.Getenv("GOPATH") + "/src/github.com/kongyixueyuan.com/alarm/fixtures/artifacts/channel.tx",

		OrgAdmin:"Admin",
		OrgName:"Org1",
		OrdererOrgName: "orderer.kevin.kongyixueyuan.com",

		ChaincodeID: SimpleCC,
		ChaincodeGoPath: os.Getenv("GOPATH"),
		ChaincodePath: "github.com/kongyixueyuan.com/alarm/chaincode/",
		UserName:"User1",
	}

	sdk, err := sdkInit.SetupSDK(configFile, initialized)
	if err != nil {
		fmt.Printf(err.Error())
		return
	}

	defer sdk.Close()

	err = sdkInit.CreateChannel(sdk, initInfo)
	if err != nil {
		fmt.Println(err.Error())
		return
	}

	channelClient, err := sdkInit.InstallAndInstantiateCC(sdk, initInfo)
	if err != nil {
		fmt.Println(err.Error())
		return
	}
	fmt.Println(channelClient)

	serviceSetup := service.ServiceSetup{
		ChaincodeID: "AlarmCC",
		Client:channelClient,
	}
	

	app := controller.Application{
		Setup: &serviceSetup,
	}
	web.WebStart(app)
}
