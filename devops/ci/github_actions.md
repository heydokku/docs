### Introduction

    - `Action` - The smallest building block for GitHub Actions you can create your own, shared from the community or customize public actions.

    - `Step` - The next level up a Step can run Actions or CLI commands.

    - `Job` - Runs one or more Steps sequentially or in parallel on a Virtual Machine (VM).

    - `Workflow` - Made up of one or more Jobs and defined as a YAML file stored in the .github/workflows directory of your repo.

### Examples

```yml
# pull-request, or workflow_dispatch(manual event) or webhooks
on: push
jobs:
  build-and-test:
    runs-on: ubuntu-latest
    steps:

    # actions or use from markerplaces
    - uses: actions/checkout@v1
    - uses: actions/setup-java@v1

    # The with keyword provides a way to pass parameters to an Action
      with:
        java-version: '12.x'
    - uses: subosito/flutter-action@v1
      with:
        channel: 'stable'

    # Get flutter packages
    - run: flutter pub get

    # Build :D
    - run: flutter build appbundle

    # Analyze our Dart code
    - run: flutter analyze

    # Run our tests
    - run: flutter test
```

### Work with gh-cli

#### you receive an overview of all types of workflow runs whether they were triggered via a push, pull request, webhook, or manual event

`gh run list --limit 5`

#### follow along as a workflow run executes

`gh run watch`

- or combine with other tools to alert you when runs are finished

`gh run watch -i1 && notify-send 'run is done`

#### drill down into the details of a single run

`gh run view`

- Only print the failed step
`gh run view [run_id] --log-failed`

- Search entire the log view with grep
`gh run view --log 742 && | grep 'runtime error' `

- Download aritifacts
`gh run download -n tps-report `

or via an interactive selector:
`gh run download`

- Rerun
`gh run rerun`


#### Workflow files

A workflow file describes a workflow’s name, behavior, and what types of events cause the workflow to be run

- select a workflow
`gh workflow view --yaml`

- get a summary of A workflow’s recent runs
`gh workflow view --yaml`

- Sometimes workflows are broken or are works in progress, you can now use
```
gh workflow enable
gh workflow disable
```

-  it’s possible to have a workflow file run on command using a *workflow_dispatch* EVENT.

Usages: - perform cleanup tasks in a repository
set a workflow for manual dispatch while it’s still a work in progress.

* checks if incoming pull requests have a body:

 ```
 name: Pull Request Check

on:
  workflow_dispatch:
    inputs:
      body:
        default: ""
      test:
        default: "false"
  pull_request_target:

jobs:
  check-body-length:
    runs-on: ubuntu-latest
    steps:
      - name: check
        env:
          PRNUM: ${{ github.event.pull_request.number }}
          PRBODY: ${{ github.event.pull_request.body }}
          TESTBODY: ${{ github.event.inputs.body }}
          TEST: ${{ github.event.inputs.test }}
        run: |
          if [ "$TEST" = "true" ]
          then
            PRBODY=$TESTBODY
          fi

          commentPR () {
            if [ "$TEST" = "true" ]
            then
              echo "would comment: '${1}'"
            else
              gh pr comment $PRNUM -b "${1}"
            fi
          }

          if [ "$PRBODY" = "" ]
          then
            commentPR "Thanks! Please add a body so we can better review your contribution."
          fi
 ```

 then
`gh workflow run pr-check.yml -f test=true body="some content"`

- check the output
`gh run view --log` to ensure that the code behaved as expected
