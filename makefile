main: run

run:
	@echo "[INFO] Nothing to run"

publish: publish-prod publish-dev
	@echo "[INFO] Package published"

install:
	@echo "[INFO] Installing dev Dependencies"
	@cd dependencies && yarn install --production=false
	@cd devDependencies && yarn install --production=false

install-prod:
	@echo "[INFO] Installing Dependencies"
	@cd dependencies && yarn install --production=true
	@cd devDependencies && yarn install --production=true

publish-prod:
	@echo "[INFO] Publishing prod package"
	@cd dependencies && npm publish --access=public

publish-dev:
	@echo "[INFO] Publishing dev package"
	@cd devDependencies && npm publish --access=public
