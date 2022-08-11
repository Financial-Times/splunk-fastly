TMPDIR := $(shell mktemp -d)

.PHONY: clean

latest: splunk_fastly-latest.tar.gz

# Splunk expects specific file and folder permissions that are
# lost when using `git archive`, use `tar` to preserve permissions
#
# The tar directory structure must include a base directory named
# after the app ID in app.conf.
splunk_fastly-%.tar.gz: $(wildcard app/default/*.conf) $(wildcard app/metadata/*.meta)
	mkdir -p $(TMPDIR)/splunk_fastly/
	cp -r app/* $(TMPDIR)/splunk_fastly/
	tar -C $(TMPDIR) -czf $(TMPDIR)/$@ splunk_fastly/
	mv $(TMPDIR)/$@ .

clean:
	rm -f splunk_fastly-*.tar.gz
