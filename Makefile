.PHONY: all
all:

.PHONY: bump
bump:
	test -n "${VERSION}" || { echo "error: VERSION not set" >&2; exit 2; }
	sed -i -re "s,(Perl-Critic-)[0-9.]+\.t,\1${VERSION}.t," .pre-commit-hooks.yaml
	sed -i -re "s,( v)[0-9.-]+,\1${VERSION}-1," README.md
