JEKYLL=bundle exec jekyll

## commands: show available commands
commands:
	@grep -h -E '^##' ${MAKEFILE_LIST} | sed -e 's/## //g' | column -t -s ':'

## build: rebuild site without running server
build:
	${JEKYLL} build

## serve: build site and run server
serve:
	${JEKYLL} serve

## validate: check the generated HTML
validate:
	@html5validator --root docs --ignore \
	'No space between attributes' \
	'The "align" attribute' \
	'The "cellpadding" attribute' \
	'The "width" attribute' \
	'An "img" element must have an "alt" attribute'
