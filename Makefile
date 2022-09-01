.PHONY: all
all:

.PHONY: bump
bump:
	test -n "${VERSION}" || { echo "error: VERSION not set" >&2; exit 2; }
	sed -i -re "s,(Perl-Critic-)[0-9.]+\.t,\1${VERSION}.t," .pre-commit-hooks.yaml
	sed -i -re "s,( v)[0-9.-]+,\1${VERSION}-1," README.md

.PHONY: install
install:
# This target is a hack to provide CPAN.pm something to "install":
# | Package comes with a Makefile and without a Makefile.PL.
# │ We'll try to build it with that Makefile then.
# https://github.com/andk/cpanpm/blob/9daa3745d76be57bdc939ec78ad226bea25eb1cb/lib/CPAN/Distribution.pm#L1039-L1042
