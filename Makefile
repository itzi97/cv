# Build both CV PDFs (English and Spanish)
all: cv.pdf cv_es.pdf

cv.pdf: cv.tex
	pdflatex cv.tex
	pdflatex cv.tex

cv_es.pdf: cv_es.tex
	pdflatex cv_es.tex
	pdflatex cv_es.tex

clean:
	rm -f cv.aux cv.log cv.out cv.pdf
	rm -f cv_es.aux cv_es.log cv_es.out cv_es.pdf
