JUNK_FILES= *.aux *.log styles/*.aux *.dvi

release: clean view

view: eliza_brock_marcum_resume.pdf
	open eliza_brock_marcum_resume.pdf

eliza_brock_marcum_resume.pdf: eliza_brock_marcum_resume.dvi
	dvipdfmx eliza_brock_marcum_resume.dvi

eliza_brock_marcum_resume.dvi:
	latex -halt-on-error eliza_brock_marcum_resume.tex

clean:
	rm -rf $(JUNK_FILES)
	find . -name "*.aux" -exec rm {} \;
