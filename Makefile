# Build the CV PDF
all:
	pdflatex cv.tex
	pdflatex cv.tex  # second pass for any cross-refs

clean:
	rm -f cv.aux cv.log cv.out cv.pdf
