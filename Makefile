output.pdf :
	pandoc -s \
	-f markdown+raw_tex \
	cv.md \
	-o /tmp/tempcv.pdf \
	--template=template.tex \
	--latex-engine=xelatex

	xdg-open /tmp/tempcv.pdf
	
