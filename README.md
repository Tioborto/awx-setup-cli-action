# AWX CLI setup GHA

This action sets up AWX CLI for use in actions.

## Usage

See [action.yml](action.yml)

Basic:

```yaml
- uses: tioborto/awx-setup-cli-action@v1
```

When use it, this action will install the awxkit python package into the PATH of Github Actions .

After that you will be able to use it easily like this:
```yaml
- name: I'm connected ? 
  run: |-
    awx me
```

## Inputs

| Input Parameter  | Required | Description | Default value | Example |
|:----------------:|:--------:|-------------|:-------------:|:-------:|
| awx-version       | false   | AWX version. The version of the client is coordinated with the version of AWX | Latest version | 19.4.0 |
| awx-url           | false   | AWX URL | - | https://my-awx.example.com |
| awx-token         | false   | AWX token. If given, authentication will be kept in next steps | - | my-strong-token |

