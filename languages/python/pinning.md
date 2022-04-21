Don’t ever use these styles in requirements.txt:

    lxml
    lxml>=2.2.0
    lxml>=2.2.0,<2.3.0

Instead, pin them:

    lxml==2.3.4
    Flask==0.9
    Jinja2==2.6
    Werkzeug==0.8.3

*Cons*:

If you don’t, you can never know what you’ll get when you run pip install. Even if you rebuild the env every time, you still can’t predict it

Eventually, all of your environments, and those of your team members, will run out of sync.

Worse even, this cannot be fixed by rerunning pip install. It’s just waiting for bad things to happen in production.


WARNING: Don’t pin by default when you’re building libraries! Only use pinning for end products/production
There is only one way to retake control: pin every dependency.

*Solution*: [pip-tools link](pip-tools.md)
we want to pin packages, but don’t want to let them become outdated
