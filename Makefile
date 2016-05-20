
MD_FILES := $(shell find . -d 1 -type f -name '*.md')
HTML_FILES := $(patsubst %.md, %.html, $(MD_FILES))

html: $(HTML_FILES)

%.html: %.md
	pandoc -t html5 --template=template/default.revealjs --standalone --section-divs $< -o site/$@
