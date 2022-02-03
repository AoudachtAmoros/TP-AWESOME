build:  ## Build the web site
	@hugo -d ./dist
clean:  ## clean the dist of the web site
	@rm -r dist/*
post:   ## reate new post
	@hugo new "posts/${POST_NAME}.md" 
	@sed -i 's/tittle: ".*"/tittle:"${POST_TITLE}"/' "content/posts/${POST_NAME}.md"
help: 
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\' | sed -e 's/##//'
	
	