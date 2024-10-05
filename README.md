# Images for Toolbox

This repository contains [Containerfiles](https://www.mankier.com/5/Containerfile) used to build images compatible with [toolbox](https://github.com/containers/toolbox).

## How to use

RUn `just build` to build all images.

Then you can create your toolbox, for example:
```
$ toolbox create -i zig-toolbox:rawhide foobar
$ toolbox enter foobar
```
