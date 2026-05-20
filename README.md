# `dotfiles` #

My personal software dependencies and configuration.

## Setup dev machine ##

Run

```sh
./modules/dev/setup
```

This will install and configure the software I use for software development.


## Structure ##

This is a pure bash v3 project for installing and configuring software on a macOS host.


The project is split between modules and libs

### `modules`

Where specific software and configuration is defined. Each module contains a executable script called `setup` that when run will install any software dependencies and configure them by linking files to specific locations on the host.

A module may just setup one dependency or it may depend on other modules by executing the `setup` script of the dependency.

Homebrew and `Brewfiles` are used to define software to install.

Each module should be idempotent so that it can run multiple times without unintended side effects or manual intervention.

### `lib`

These files contain bash functions that can be used by modules and contain shared code. These files are not executable.


