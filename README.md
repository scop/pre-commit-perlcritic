# pre-commit-perlcritic

[perlcritic](https://metacpan.org/dist/Perl-Critic) hook for
[pre-commit](https://pre-commit.com).

Usage in `.pre-commit-config.yaml`:

```yaml
- repo: https://github.com/scop/pre-commit-perlcritic
  rev: v1.144-1
  hooks:
    - perlcritic
```
