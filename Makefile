# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html#Phony-Targets
# introduced port variable:
# you can explicitely pass a port, e.g. $ make hugo port=1313
# open a version with and without drafts in parallel:
# make hugo hugoWOD
.PHONY : hugo 
.RECIPEPREFIX = -

# default port


port=4000
baseURL=http://localhost:$(port)

hugo :  node_modules_install open # open_current # open_m1 # openH
-  export HUGO_MODULE_REPLACEMENTS="github.com/progwebtec/classes-module -> ../../classes-module" && hugo --navigateToChanged --buildDrafts --baseURL "$(baseURL)"  -p $(port) server

open:
- open $(baseURL)

# without drafts, more like production
portProduction=4444
baseURLProduction=http://localhost:$(portProduction)
production :  node_modules_install openP # open_current # open_m1 # openH
-  hugo --disableFastRender --navigateToChanged --buildFuture --baseURL "$(baseURLProduction)"  -p $(portProduction) server


openP:
- open $(baseURLProduction)


open_current:
- open http://localhost:$(port)/classes/m1

build:
- hugo --environment production  --baseURL "http://localhost:$(port)/~kleinen/"  

node_modules_install :
-  npm install

audit: 
- HUGO_MINIFY_TDEWOLFF_HTML_KEEPCOMMENTS=true HUGO_ENABLEMISSINGTRANSLATIONPLACEHOLDERS=true hugo  && grep -inorE "<\!-- raw HTML omitted -->|ZgotmplZ|\[i18n\]|\(<nil>\)|(&lt;nil&gt;)|hahahugo" public/

ps:
- ps -ax | grep hugo

aliases_list:
- grep -R "aliases: " content

aliases_update:
- echo "# this file is generated from front matter aliases with make aliases_update" > data/aliases.yml
- echo "# these shortcuts/aliases are used in the back to course link in material, " >> data/aliases.yml
- echo "# they do not work as an url alias!"  >> data/aliases.yml
#- grep -R "aliases: " content | sed -e "s%content\(.*\)\(/\.md\|\)\(_index.md\)*:aliases: /\([^/]*\)/*%\4:  \1%g" >> data/aliases.yml
- grep -R "aliases: " content | sed -e "s%content\(.*\):aliases: /\([^/]*\)/*%\2:  \1%g" >> data/aliases.yml

aliases_update_try:
- echo "# this file is generated from front matter aliases with make aliases_update" > data/aliases.yml
- echo "# these shortcuts/aliases are used in the back to course link in material, " >> data/aliases.yml
- echo "# they do not work as an url alias!"  >> data/aliases.yml
- grep -R "aliases: " content | sed -e "s%content\(.*\):aliases: /\([^/]*\)/*%\2:  \1%g" 


################################################################################################################
################ Automatic tagging and deployment. Not used on progwebtec yet. ################
################################################################################################################
c :
-	git add .
-	git commit -m "$m"

# variable definition is executed when needed
# variable can also be set when calling target, e.g.
#    make deploy tag=v0.42
# zum ausprobieren
# tag = $(shell echo DEF_TAG)
tag = $(shell bin/hugo_deployment/gitautotag.sh --minor)

tag : check_on_main push
-	echo "created new tag $(tag)"

push :
-	git push origin main

 # indirection needed to only create tag if conditions are met
deploy : check_on_main push deployIMPLYOUDONTWANNATYPETHIS

deployIMPLYOUDONTWANNATYPETHIS : # dont call this directly!!!!
-	git push origin $(tag)

ERR = $(error error is "not on main branch")
current_branch = $(shell git branch --show-current)

check_on_main :
ifneq ($(current_branch),main)
- echo $(ERR)
endif

actions:
- open https://github.com/bkleinen/bkleinen.github.io/actions
- open https://github.com/progwebtec/progwebtec.github.io/actions
