main: run

run:
	@echo "[INFO] Nothing to run"

publish:
	@echo "[INFO] Publishing package"
	@cd dependencies && npm publish --access=public
	@cd devDependencies && npm publish --access=public

install:
	@echo "[INFO] Installing dev Dependencies"
	@yarn install --production=false

install-prod:
	@echo "[INFO] Installing Dependencies"
	@yarn install --production=true
