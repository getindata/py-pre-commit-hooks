# Python pre-commit hooks

[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## About

This is small repository that adds python based hooks for pre-commit.

## Supported hooks

* [pyspelling-docker](https://github.com/rojopolis/spellcheck-github-actions)
  This hook uses pyspelling in docker container. Supported languages: `[en, pl, de, fr, es]`. It looks for `.spellcheck.yml` config. In case it does not find it, it uses the default specified in this repository. Configure it using the [pyspelling configuration](https://facelessuser.github.io/pyspelling/configuration/). The only supported spellchecker right now is aspell.

## Example usage

Define in `.pre-commit-config.yaml`:

```yaml
- repo: <github repo>
  rev: <version>
  hooks:
  - id: pyspelling-docker
```
