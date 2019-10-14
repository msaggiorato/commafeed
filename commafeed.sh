#!/bin/bash
if [[ ! -f "/config/config.yml" ]]; then
	echo "Defaulting configuration file"
	cp /config.yml.default /config/config.yml
fi

java -Djava.net.preferIPv4Stack=true -jar commafeed.jar server /config/config.yml