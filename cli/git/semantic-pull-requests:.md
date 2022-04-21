PR = Pull Request

Configuration

By default, no configuration is necessary.

If you wish to override some behaviors, you can add a semantic.yml file to your .github
directory with the following optional settings:

# Disable validation, and skip status check creation
enabled: false

# Always validate the PR title, and ignore the commits
titleOnly: true

# Always validate all commits, and ignore the PR title
commitsOnly: true

### Easy to understand with the [explanation](https://github.com/zeke/semantic-pull-requests#example-scenario)
