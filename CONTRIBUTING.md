# Contributing Guide

Hi! We are really excited that you are interested in contributing to Edu. Before submitting your contribution, please make sure to take a moment and read through the following guidelines:

- [Issue Reporting Guidelines](#issue-reporting-guidelines)
- [Pull Request Guidelines](#pull-request-guidelines)
- [Development Setup](#development-setup)
- [Project Structure](#project-structure)

## Issue Reporting Guidelines

- Always use https://github.com/OpenQazaqstan/EduApp/issues to create new issues.

## Pull Request Guidelines

- The `master` branch is just a snapshot of the latest stable release. All development should be done in dedicated branches. **Do not submit PRs against the `master` branch.**

- Checkout a topic branch from the relevant branch, e.g. `dev`, and merge back against that branch.

- Work in the `src` folder and **DO NOT** check-in `build` in the commits.

- It's OK to have multiple small commits as you work on the PR - GitHub will automatically squash it before merging.

- Make sure `dart analyze .` passes. (see [development setup](#development-setup))

- If adding a new feature:
  - Add accompanying test case.
  - Provide a convincing reason to add this feature. Ideally, you should open a suggestion issue first and have it approved before working on it.

- If fixing bug:
  - If you are resolving a special issue, add `(fix #xxxx[,#xxxx])` (#xxxx is the issue id) in your PR title for a better release log, e.g. `update entities encoding/decoding (fix #3899)`.
  - Provide a detailed description of the bug in the PR. Live demo preferred.
  - Add appropriate test coverage if applicable.

## Development Setup

You will need [Flutter](http://flutter.dev/).

After cloning the repo, run:

``` bash
$ flutter pub get # install the dependencies of the project
```

### Commonly used Flutter commands

``` bash
# watch and auto re-build
$ flutter run

# generate icons
$ flutter pub run flutter_launcher_icons:main
```

## Project Structure

- **`android`**: contains android-related configs

- **`assets`**: contains assets for app

- **`scripts`**: contains build-related scripts and configuration files. Usually, you don't need to touch them

- **`src`**: contains the source code

  - **`components`**: contains components shared across the entire codebase.

  - **`pages`**: contains the app pages

  - **`shared`**: contains utilities shared across the entire codebase.
