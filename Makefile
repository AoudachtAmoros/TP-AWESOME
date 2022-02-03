build:  ## To Build the web site
	@hugo -d ./dist
clean:  ## To clean the dist directory
	@rm -r dist/*
post:   ## To create new post
	@hugo new "posts/${POST_NAME}.md" 
	@sed -i 's/tittle: ".*"/tittle:"${POST_TITLE}"/' "content/posts/${POST_NAME}.md"
help: 
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
	
	
