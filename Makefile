SASSBIN=./node_modules/.bin/node-sass
SASSFLAGS=--include-path='./node_modules/normalize.css/'
SRC=src/zakalwe.scss

all: $(SASSBIN) clean zakalwe.css zakalwe.min.css

$(SASSBIN):
	npm install

zakalwe.css: $(SRC)
	$(SASSBIN) $(SASSFLAGS) $(SRC) > $@

zakalwe.min.css: $(SRC)
	$(SASSBIN) $(SASSFLAGS) --output-style=compressed $(SRC) > $@

clean:
	rm -f *.css

watch: zakalwe.css
	$(SASSBIN) $(SASSFLAGS) --watch $(SRC) -o .

.PHONY: all clean zakalwe.css zakalwe.min.css
