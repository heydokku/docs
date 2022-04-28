 The most common use case is creating golden images that teams
 across an organization can use in cloud infrastructure.

HCP Packer stores metadata about your Packer images so that you can
track updates, use the most up-to-date base images, and deploy the most
up-to-date downstream images. This bridges the gap between image
factories and image deployments, allowing development and security teams
to work together to create, manage, and consume images in a centralized
way.

Hands On: Try the Get Started with HCP Packer collection on
HashiCorp Learn to set up a Packer template, push metadata to the
registry, explore the registry UI, and more.

HCP Packer stores metadata about your images in a centralized registry,
including when they were created, the associated cloud provider, and
which (if any) Git commit is associated with your image build. It does
not store the images themselves, so you will continue storing them in
cloud platforms or other services. The HCP Packer registry helps you
track information about machine images, clearly designate which images
