BUILD_DIR=_build
CSS_DIR=$(BUILD_DIR)/assets/css
JS_DIR=$(BUILD_DIR)/assets/js

SCSS=scss/_all.scss
CSS=$(CSS_DIR)/fsfi.css

JS_SRC=js/navbar.js

site: $(BUILD_DIR) css static js
.PHONY: site


static: $(BUILD_DIR)
	rsync -a static/ $(BUILD_DIR)/
.PHONY: static


html:
	@python3 ./bin/html
.PHONY: html


css: $(CSS)
.PHONY: css


$(CSS): $(SCSS) scss/style.scss $(BUILD_DIR)
	mkdir -p `dirname $(CSS)`
	sass --style expanded $(SCSS) $(CSS)


js: $(JS_DIR) $(JS_SRC)
	cat $(JS_SRC) > $(JS_DIR)/fsfi.js
.PHONY: js


$(JS_DIR):
	mkdir -p $(JS_DIR)


$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean: clean-css clean-js clean-build
.PHONY: clean

clean-build:
	rm -rf $(BUILD_DIR)
.PHONY: clean-build

clean-css:
	rm -rf $(CSS)
.PHONY: clean-css

clean-js:
	rm -rf $(JS_DIR)
.PHONY: clean-js

upload: site
	rsync -avz _build/ w@lyra:~/fsfi/
.PHONY: upload
