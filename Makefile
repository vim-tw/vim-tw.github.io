.PHONY: main install run bundle_run update review kill clean

OS_NAME := $(shell uname)
BRANCH  := $(shell cat .git/HEAD | awk -F/ '{ print $$3 }')

main: review

install:
	gem install --no-ri --no-doc bundler github-pages

run:
	jekyll serve &

bundle_run:
	bundle exec jekyll serve &

update:
	-git pull origin ${BRANCH}

review: kill run
ifeq (${OS_NAME}, Darwin)
	sleep 3
	open http://0.0.0.0:4000
else
	sleep 3
	firefox http://0.0.0.0:4000
endif

kill:
	-kill -9 `ps -ef | grep 'jekyll serve' | awk '{ print $$2 }'`

push:
	-git push origin master 
	-git push origin develop

clean:
	-rm -rf _site Gemfile.lock 

