main: run

run:
	@echo "[INFO] Nothing to run"

publish-all: publish-prod publish-dev publish-mobx publish-mongoose publish-mongoose-dev

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

publish-mobx:
	@echo "[INFO] Publishing mobx package"
	@cd mobx && npm publish --access=public

publish-mongoose:
	@echo "[INFO] Publishing mongoose package"
	@cd mongoose && npm publish --access=public

publish-mongoose-dev:
	@echo "[INFO] Publishing mongoose development package"
	@cd mongoose-dev && npm publish --access=public
