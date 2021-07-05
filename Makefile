public: clean
	hugo --disableKinds=taxonomy,taxonomyTerm,RSS,sitemap

.PHONY: deploy
deploy: public
	up

.PHONY: clean
clean:
	rm -rf public
