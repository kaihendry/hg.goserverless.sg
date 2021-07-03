public: clean
	hugo --disableKinds=taxonomy,taxonomyTerm,RSS,sitemap

clean:
	rm -rf public
