serve:
	zola serve -i 0.0.0.0 -u `hostname`
deploy:
	zola check
	sudo zola build -o /srv/http/blog
