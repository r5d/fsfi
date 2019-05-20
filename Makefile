BUILD_DIR=_build
CSS_DIR=$(BUILD_DIR)/assets/css
JS_DIR=$(BUILD_DIR)/assets/js

SCSS=scss/_all.scss
CSS=$(CSS_DIR)/fsfi.css

JS_SRC=js/navbar.js

site: $(BUILD_DIR) css static js html feed
.PHONY: site


static: $(BUILD_DIR)
	rsync -a static/ $(BUILD_DIR)/
.PHONY: static


html:
	@python3 ./bin/html
.PHONY: html

feed:
	@python3 ./bin/feed
.PHONY: feed


css: $(CSS)
.PHONY: css


$(CSS): $(SCSS) scss/style.scss $(BUILD_DIR)
	mkdir -p `dirname $(CSS)`
	sassc --style expanded $(SCSS) $(CSS)


js: $(JS_DIR) $(JS_SRC)
	cat $(JS_SRC) > $(JS_DIR)/fsfi.js
.PHONY: js


$(JS_DIR):
	mkdir -p $(JS_DIR)


$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)


clean:
	rm -rf $(BUILD_DIR)
.PHONY: clean


upload: site
	rsync -avz _build/ w@lyra:~/fsfi/
.PHONY: upload
