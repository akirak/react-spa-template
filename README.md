# Template for Toy React SPA Applications

**Deprecation notice: This template was created in mid-2022. In 2023, I would use Vite, so I won't maintain this repository any more**.

This is a boilerplate for single page applications (SPAs) with React.
It lets you get started with developing a React SPA quickly without manual configuration of linters, Jest, Git hooks, etc.

It is mostly intended for helping myself practicing React coding, and it adopts some opinionated toolings such as:

* [Nix](https://nixos.org/) (flake) + direnv
* [pnpm](https://pnpm.io/)

This is not an enterprise-grade project boilerplate. It omits support for styling, i18n, and many other features, but you can add them on your own.

## Features

* Create React App + [react-app-rewired](https://github.com/timarney/react-app-rewired/) + swc
* Provides linting out of the box: prettier, eslint, and husky + lint-staged
* Jest
* Storybook
* msw

## Prerequisites

If you are using Nix (with flakes enabled) and direnv, you don't have to install anything.
Nix runs on Linux and Mac.

If you are not using Nix, you will need the following tools:

* Node.js 18
* Pnpm 7

If you are using Emacs, it is suggested you use the following packages:

* eglot
* flymake-eslint
* reformatter.el (for running prettier)

## Installation

To scaffold a new project, you can use this repository as a GitHub template repository.

Alternatively, you can clone this repository using Nix:

``` shell
nix flake new -t github:akirak/react-spa-template NAME
```

## Usage

If you are using Nix (with flakes enabled) and direnv, allow the direnv environment:

``` shell
direnv allow
```

Use pnpm to install dependencies:

``` shell
pnpm install
```

Most commands are available in npm scripts.
To start a development server, run:

``` shell
pnpm start
```

### Further configuration

In addition to the existing configuration, one might add the following libraries to a project created from this template:

* Add a library for styling (e.g. Tailwind, Emotion, etc.)
* i18n (react-i18next)
* @mswjs/data for mock data

## Credits

The structure and mock code is based on [Bulletproof React](https://github.com/alan2207/bulletproof-react/).
