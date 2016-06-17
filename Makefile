all: build

build:
	hugo && mv public/* ../hogwashcheaptalk.github.io/.

publish: build
	cd ../hogwashcheaptalk.github.io && git push
