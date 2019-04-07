BUILD_DIR=_build
CSS_DIR=$(BUILD_DIR)/assets/css
JS_DIR=$(BUILD_DIR)/assets/js
IMG_DIR=$(BUILD_DIR)/assets/img

SCSS=scss/_all.scss
CSS=$(CSS_DIR)/fsfi.css

JS_SRC=js/navbar.js

site: $(BUILD_DIR) css img html js
.PHONY: site


html: $(BUILD_DIR)
	rsync -a html/ $(BUILD_DIR)/
.PHONY: html

img: $(BUILD_DIR)
	rsync -a img/ $(IMG_DIR)/
.PHONY: img

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
	rsync -avz _build/ nf:~/public_html/tmp/fsfi/
.PHONY: upload
