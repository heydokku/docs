
Flutter crash reporting

## Disabling analytics reporting

You can opt out of anonymous crash reporting and feature
usage statistics from Flutter by running the following command:

```terminal
$ flutter config --no-analytics
```

If you opt out of analytics, an opt-out event will be sent,
and then no further information will be sent by that
installation of Flutter.

To display the current setting, you can run the following command:

```terminal
$ flutter config
```
