# Images for Toolbox

This repository contains [Containerfiles](https://www.mankier.com/5/Containerfile) used to build images compatible with [toolbox](https://github.com/containers/toolbox).

## How to use

Run `./build_all.fish` or alternatively build them one by one yourself:
```
$ podman build -f Containerfile.xyz -t distro-toolbox:latest .
```

Then you can create your toolbox:
```
$ toolbox create -i distro-toolbox:latest foobar
$ toolbox enter foobar
```
