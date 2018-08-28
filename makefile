all: slides.html

slides.html: slides.md reveal/theme.css
	pandoc -t html5 --template=reveal/template.html     --standalone --section-divs --variable transition="linear"  slides.md -o slides.html

clean:
	rm -f slides.html *pdf