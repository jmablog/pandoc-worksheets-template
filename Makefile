build:
	pandocomatic -i src -o docs -c config.yaml -m -d "$(shell pwd)"
