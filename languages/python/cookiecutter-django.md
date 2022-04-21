### Features

    For Django 3.2
    Works with Python 3.9
    Renders Django projects with 100% starting test coverage
    Twitter Bootstrap v5
    12-Factor based settings via django-environ
    Secure by default. We believe in SSL.
    Optimized development and production settings
    Registration via django-allauth
    Comes with custom user model ready to go
    Optional basic ASGI setup for Websockets
    Optional custom static build using Gulp and livereload
    Send emails via Anymail (using Mailgun by default or Amazon SES if AWS is selected cloud provider, but switchable)
    Media storage using Amazon S3 or Google Cloud Storage
    Docker support using docker-compose for development and production (using Traefik with LetsEncrypt support)
    Procfile for deploying to Heroku
    Instructions for deploying to PythonAnywhere
    Run tests with unittest or pytest
    Customizable PostgreSQL version
    Default integration with pre-commit for identifying simple issues before submission to code review

### Optional Integrations

These features can be enabled during initial project setup.

    Serve static files from Amazon S3, Google Cloud Storage or Whitenoise
    Configuration for Celery and Flower (the latter in Docker setup only)
    Integration with MailHog for local email testing
    Integration with Sentry for error logging

### Constraints

    Only maintained 3rd party libraries are used.
    Uses PostgreSQL everywhere: 10.19 - 14.1 (MySQL fork also available).
    Environment variables for configuration (This won't work with Apache/mod_wsgi).
