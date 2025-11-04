.PHONY: build deploy trim-whitespace

run-prod:
	hugo server :1313

run-with-drafts:
	hugo server -D :1313

build:
	hugo --minify

deploy: build
	rsync -avz --delete --progress \
		public/ \
		lightsail:caddy-porkbun-docker/pub-schem-metodichka/

trim-whitespace:
	find . -type f \( -name "*.md" -o -name "*.toml" -o -name "*.scss" -o -name "Makefile" \) \
		-not -path "./.git/*" \
		-not -path "./public/*" \
		-not -path "./resources/*" \
		-exec sed -i 's/[[:space:]]*$$//' {} +
