# vagrant-puppet

easily download puppet modules for use with new vagrant boxes.

`modules` directory is linked to `~/.puppet/modules`, which is the default location of puppet module installs (`puppet module install <modulename>`)

## development notes

### puppetlabs/stdlib@4.1.0

    git subtree add --prefix=self/modules/stdlib https://github.com/puppetlabs/puppetlabs-stdlib.git 1ffd72daaaf21e71e762b6cd543043680bdb6694 --squash

### puppetlabs/apt@1.4.0

    git subtree add --prefix=self/modules/apt https://github.com/puppetlabs/puppetlabs-apt.git 924e89289b93db60ef0f16a4e71579fa88e037a6 --squash
