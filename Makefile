JUNK_FILES= *.aux *.log styles/*.aux *.dvi

release: clean view

view: resume.pdf
	open resume.pdf

resume.pdf: resume.dvi
	dvipdfmx resume.dvi

resume.dvi:
	latex -halt-on-error resume.tex

clean:
	rm -rf $(JUNK_FILES)
	find . -name "*.aux" -exec rm {} \;
