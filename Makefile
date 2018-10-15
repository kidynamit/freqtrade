ETH_CONFIG=./etc/eth/config_hyperopt.json
BTC_CONFIG=./etc/btc/config_hyperopt.json

ETH_CONTAINER=objective_davinci
BTC_CONTAINER=trusting_beaver

update: edit_config
	sudo docker cp $(ETH_CONFIG) $(ETH_CONTAINER):/freqtrade/$(ETH_CONFIG)
	sudo docker restart $(ETH_CONTAINER)
	sudo docker cp $(BTC_CONFIG) $(BTC_CONTAINER):/freqtrade/$(BTC_CONFIG)
	sudo docker restart $(BTC_CONTAINER)

edit_config:
	vim $(ETH_CONFIG)
	vim $(BTC_CONFIG)
