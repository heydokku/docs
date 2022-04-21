However, there are still many cases where you want to offload execution of a heavy task to other parts of your entire system architecture instead of tackling them on your main thread. Identifying such tasks is as simple as checking to see if they belong to one of the following categories:

    Periodic tasks — Jobs that you will schedule to run at a specific time or after an interval, e.g., monthly report generation or a web scraper that runs twice a day.

    Third-party tasks — The web app must serve users quickly without waiting for other actions to complete while the page loads, e.g., sending an email or notification or propagating updates to internal tools (such as gathering data for A/B testing or system logging).

    Long-running jobs — Jobs that are expensive in resources, where users need to wait while they compute their results, e.g., complex workflow execution (DAG workflows), graph generation, Map-Reduce like tasks, and serving of media content (video, audio).
