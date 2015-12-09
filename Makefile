.PHONY: main install run bundle_run update review clean

OS_NAME := $(shell uname)
BRANCH  := $(shell cat .git/HEAD | awk -F/ '{ print $$3 }')

main: run

install:
	gem install --no-ri --no-doc bundler github-pages

run:
	jekyll serve

bundle_run:
	bundle exec jekyll serve

update:
	-git pull origin ${BRANCH}

review:
ifeq (${OS_NAME}, Darwin)
	open http://0.0.0.0:4000
else
	firefox http://0.0.0.0:4000
endif

push:
	-git push origin master 
	-git push origin develop

clean:
	-rm -rf _site Gemfile.lock 

