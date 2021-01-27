JUNK_FILES= *.aux *.log styles/*.aux *.dvi

release: clean view

view: eliza_brock_marcum_resume.pdf references.pdf
	open eliza_brock_marcum_resume.pdf
	# open references.pdf

references.pdf: references.dvi
	dvipdfmx references.dvi

resume.pdf: eliza_brock_marcum_resume.dvi
	dvipdfmx eliza_brock_marcum_resume.dvi

references.dvi:
	latex -halt-on-error references.tex

resume.dvi:
	latex -halt-on-error eliza_brock_marcum_resume.tex

clean:
	rm -rf $(JUNK_FILES)
	find . -name "*.aux" -exec rm {} \;
