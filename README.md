# Hub in Docker

This container has the [hub](https://github.com/jsternberg/hub) program
installed within a docker container that contains git too.

If used within an interactive shell, `hub` is automatically aliased to
`git`. You should set `GITHUB_USER` and `GITHUB_TOKEN` as environment
variables so that hub is able to communicate with GitHub.
