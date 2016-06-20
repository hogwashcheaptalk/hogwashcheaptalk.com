all: build

build:
	hugo && find ../hogwashcheaptalk.github.io | grep -v "\/\.git" | grep -v "CNAME" | xargs rm -rf && mv public/* ../hogwashcheaptalk.github.io/.

publish: build
	cd ../hogwashcheaptalk.github.io && git add . && git commit -m "publish" && git push
