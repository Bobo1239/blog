serve:
	gutenberg serve -i 0.0.0.0 -u `hostname`
deploy:
	# TODO: this sucks...
	sudo mv /srv/http/blog/shared /srv/http/shared
	sudo gutenberg build -o /srv/http/blog
	sudo mv /srv/http/shared /srv/http/blog/shared
