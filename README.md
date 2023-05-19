# VSHN Container Build Example

This repository aims to demonstrate how to build container images with GitHub Actions, and push them to the GitHub Container Registry (GHCR).

## How it works

The container build will be triggered when you

* push a Git tag
* push to the `main` branch
* open a PR

The workflow will determine the tags to use based on the event that triggered a workflow, see the [docker/metadata-action documentation](https://github.com/docker/metadata-action#basic) for a detailed explanation. TL;DR:

* PR -> `pr-N`
* Push to `main` -> `main`
* Push to a tag -> `$TAG` (and also `latest` if the tag resembles a SemVer number)


## Troubleshooting

### "Permission denied" when trying to push a new image

This can happen if a GitHub Package by the same name already exists, either because it has been pushed or created manually, or if the repository was deleted and recreatd.

To fix this, go to the organization's "Packages" list (e.g. https://github.com/orgs/vshn/packages), and delete the conflicting package (if that's reasonable to do!).
