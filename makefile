all: slides.html notes.html

slides.html: slides.md
	pandoc -t html5 --template=reveal/template.html --standalone --section-divs --variable transition="linear"  slides.md -o slides.html

notes.html: slides.md
	pandoc slides.md -o notes.html

clean:
	rm -f slides.html *pdf