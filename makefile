all:
	haml render index.html.haml > index.html
	sass style.scss:style.css
	git -C ~/Developer/GamesKeeper/ pull
	cp ~/Developer/GamesKeeper/releasenotes.html .
	cp ~/Developer/GamesKeeper/releasenotes.json .
	open .
	open /Applications/Cyberduck.app

watch:
	sass --watch style.scss:style.css
