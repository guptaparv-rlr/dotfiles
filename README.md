# Dotfiles

Managing configuration and tools through code.

## Getting Started

The dotfiles are managed by [dotbot](https://github.com/anishathalye/dotbot) bootstraper. The entrypoint is the `install.conf.yaml` which contains all the dotfiles to be configured and triggers **brew** installation from `Brewfile` for MacOS applications, execute ansible playbook from `ansible/playbook.yaml` to install auxiliary packages and install Visual Studio Code extensions from `vscode/install.sh`.

Execute the script to configure/install all the components from `install.conf.yaml`.

```bash
chmod +x install.sh
./install.sh
```
