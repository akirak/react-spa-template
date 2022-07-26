# Template for Toy React SPA Applications

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

### Follow-up tasks

Here are suggestions for what one would do after scaffolding a project from this template:

* Add a library for styling
* i18n
* @mswjs/data

## Credits

The structure and mock code is based on [Bulletproof React](https://github.com/alan2207/bulletproof-react/).
