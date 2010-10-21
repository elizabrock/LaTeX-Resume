JUNK_FILES= *.aux *.log styles/*.aux *.dvi

release: clean view

view: resume.pdf references.pdf
	open resume.pdf
	# open references.pdf

references.pdf: references.dvi
	dvipdfmx references.dvi

resume.pdf: resume.dvi
	dvipdfmx resume.dvi

references.dvi:
	latex -halt-on-error references.tex

resume.dvi:
	latex -halt-on-error resume.tex

clean:
	rm -rf $(JUNK_FILES)
	find . -name "*.aux" -exec rm {} \;
