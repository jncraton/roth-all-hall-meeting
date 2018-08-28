all: slides.html notes.html index.html

slides.html: slides.md
	pandoc -t html5 --template=reveal/template.html --standalone --section-divs --variable transition="linear"  slides.md -o slides.html

notes.html: slides.md
	pandoc --css=media/notes.css slides.md -o notes.html

index.html: slides.html
	cp slides.html index.html

clean:
	rm -f *.html *.pdf