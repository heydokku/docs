[0] [OctoLinker](OctoLinker) 4.9k is a browser extension for GitHub, that turns language-specific statements like include require or import into links.

### Webhooks

for the purpose of integration, GitHub webhooks give developers the ability to integrate with the GitHub platform.

Developers can subscribe to events taking place on GitHub, for example Push events that occur when code is pushed to a repository, and respond to the event with an action.

- Types of GitHub webhooks events

    Push Event: This event is triggered when one or more commits are pushed to a repository branch or tag. This is one of the most common events developers subscribe to, as a lot can be done in response to a Push Event. You can trigger tests in continuous integration pipelines, send alerts to code reviewers on your team to review the new commit, and even trigger deployments to staging and/or production servers.

    Pull Request Event: This event is triggered for any activity that involves Pull Requests, for example when a Pull Request is opened, assigned, labeled, or closed, etc. The type of activity is specified in the action property of the webhook request payload.

    Issues Event: Any activity related to issues causes this event to be triggered. Just like the Pull Request Event, the type of activity is specified in the action property of the payload. The issue itself is contained in the issue property. One common use case of this event is in updating an external issue tracker.

    Create Event: This event

### GitHub Actions

is a built-in CI/CD tool for GitHub and allows developers to automate the testing and deployment of code. When new code is pushed to a GitHub repository, GitHub actions can be set up to test the code, merge it to the main repository when tests pass and also deploy the application to a destination server.
