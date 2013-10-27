build: npm component grunt docpad
	@echo "Complete"

docpad:
	@docpad generate

component:
	@component install
	@component build --out src/files/components --standalone app -v

npm:
	@npm install

grunt:
	@grunt

clean:
	@rm -rf out components src/files/components node_modules build

.PHONY: build
