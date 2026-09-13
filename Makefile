# Generic CVs for job applications — English, Spanish, and a plain (link-free) English for parsers.
JOBS := jobs/cv.pdf jobs/cv_es.pdf jobs/cv_plain.pdf

all: $(JOBS)

%.pdf: %.tex
	cd $(dir $<) && pdflatex -interaction=nonstopmode $(notdir $<) && pdflatex -interaction=nonstopmode $(notdir $<)

check: all
	@for f in $(JOBS); do \
	  if pdftotext "$$f" - | grep -q -i -E 'paradox|8\.05|8\.64|8\.61|8,61|computational'; then echo "STALE STRING IN $$f"; exit 1; fi; \
	done; echo "check: no stale strings in any PDF"

clean:
	rm -f jobs/*.aux jobs/*.log jobs/*.out

.PHONY: all check clean
