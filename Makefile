all: build

build:
	hugo && cd ../hogwashcheaptalk.github.io && find . | grep -v "\/\.git" | grep -v "CNAME" | grep -v "\.\$$" | xargs rm -rf && cd ../hogwashcheaptalk.com && mv public/* ../hogwashcheaptalk.github.io/.

publish: build
	cd ../hogwashcheaptalk.github.io && git add . && git commit -m "publish" && git push
