# CV — Itziar Morales

LaTeX source for my CV, in three builds from one layout:

| File | What |
|---|---|
| `jobs/cv.tex` | English, with links |
| `jobs/cv_es.tex` | Spanish |
| `jobs/cv_plain.tex` | English with no links, bookmarks or PDF metadata — for applicant-tracking parsers |

```bash
make        # builds all three into jobs/
make check  # builds, then fails if any PDF still carries a retired figure or employer
make clean
```

CI rebuilds the PDFs on every push to `main`, runs the same check, and copies `cv.pdf` and `cv_es.pdf`
to the portfolio site. Requires TeX Live with `pdflatex` (plus `texlive-lang-spanish` for `cv_es`) and
`poppler-utils` for `make check`.
