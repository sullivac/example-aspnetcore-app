# ExampleAspNetCoreApp

Uses a dev container to package development environment with source code.

## Prequisites

* Docker Desktop
* Visual Studio Code
    * Remote Development extension  
      https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack
* *recommended* WSL 2  
  Using WSL 2 as the backend for Docker Desktop has a better experience than using Hyper-V. Also, building Docker images from a Linux environment gets around some idiosyncracies with NTFS (Windows file system) and bind mounts.

## Dev Container

Contains:
* ZSH and OhMyZsh
* Docker outside of Docker - allows for using Docker CLI from within the container
* .NET SDK - both LTS versions (8.0 and 6.0)
* Node - LTS

## Other Resources

* Visual Studio Code Dev Container documentation  
  https://code.visualstudio.com/docs/devcontainers/containers
* Office Dev Container specification  
  https://containers.dev/
* Dev Container Features repository  
  https://github.com/devcontainers/features/tree/main/src

###

Demo using git from container
