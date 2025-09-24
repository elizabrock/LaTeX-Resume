JUNK_FILES := $(wildcard *.aux *.log styles/*.aux *.dvi *.pdf)
TEX_FILES := $(wildcard *.tex)
OUTPUT_FILES = $(TEX_FILES:tex=pdf)

release: clean view

view: $(OUTPUT_FILES)
	@echo "The list of files: $^"
	open $^

%.pdf: %.tex
	xelatex $<

clean:
	rm -rf $(JUNK_FILES)
