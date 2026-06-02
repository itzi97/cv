# Build all CV PDFs (English, Spanish, Plain)
all: cv.pdf cv_es.pdf cv_plain.pdf

cv.pdf: cv.tex
	pdflatex cv.tex
	pdflatex cv.tex

cv_es.pdf: cv_es.tex
	pdflatex cv_es.tex
	pdflatex cv_es.tex

cv_plain.pdf: cv_plain.tex
	pdflatex cv_plain.tex
	pdflatex cv_plain.tex

clean:
	rm -f cv.aux cv.log cv.out cv.pdf
	rm -f cv_es.aux cv_es.log cv_es.out cv_es.pdf
	rm -f cv_plain.aux cv_plain.log cv_plain.out cv_plain.pdf
