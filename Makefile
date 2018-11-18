serve:
	zola serve -i 0.0.0.0 -u `hostname`
deploy:
	# TODO: this sucks...
	zola build # check build
	sudo mv /srv/http/blog/shared /srv/http/shared
	sudo zola build -o /srv/http/blog
	sudo mv /srv/http/shared /srv/http/blog/shared
