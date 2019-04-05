BUILD_DIR=_build
CSS_DIR=$(BUILD_DIR)/assets/css
IMG_DIR=$(BUILD_DIR)/assets/img

SCSS=scss/fsfi.scss
CSS=$(CSS_DIR)/fsfi.css

site: $(BUILD_DIR) css img html
.PHONY: site


html: $(BUILD_DIR)
	rsync -a html/ $(BUILD_DIR)/
.PHONY: html

img: $(BUILD_DIR)
	rsync -a img/ $(IMG_DIR)/
.PHONY: img

css: $(CSS)
.PHONY: css

$(CSS): $(SCSS) $(BUILD_DIR)
	mkdir -p `dirname $(CSS)`
	sass --style expanded $(SCSS) $(CSS)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean: clean-build clean-css
.PHONY: clean

clean-build:
	rm -rf $(BUILD_DIR)
.PHONY: clean-build

clean-css:
	rm -rf $(CSS)
.PHONY: clean-css
