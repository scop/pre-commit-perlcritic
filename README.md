# pre-commit-perlcritic

[perlcritic](https://metacpan.org/dist/Perl-Critic) hook for
[pre-commit](https://pre-commit.com).

Usage in `.pre-commit-config.yaml`:

```yaml
- repo: https://github.com/scop/pre-commit-perlcritic
  rev: v1.156-1
  hooks:
    - id: perlcritic
```

To include additional policies, append `additional_dependencies`
to the above, for example:

```yaml
      additional_dependencies:
        - KRYDE/Perl-Critic-Pulp-99.tar.gz
        - PETDANCE/Perl-Critic-StricterSubs-0.06.tar.gz
```
