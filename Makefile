.PHONY: examples

CC = xelatex
HTML_CC = htxelatex
SRC = src
SECTION_DIR = src/sections
SECTION_SRCS = $(shell find $(SECTION_DIR) -name '*.tex')

cv.pdf: $(SRC)/cv.tex $(SECTION_SRCS)
	$(CC) -output-directory=$(SRC) $<

clean:
	rm -rf $(SRC)/*.pdf
