# deploy-vim

A set of playbooks and roles that can be used to install and configure vim.
This way vim is installed and configured the same way on all my systems where
I use it.

Since I use different *NIX-es and Linux distros, the deployer needs to take
this into account.

## Requirements

On MacOSX, you need to have brew installed, since that will be used as the
package manager. Some of the packages on Archlinux are in the AUR repository.
The `kewlfft.aur` ansible galaxy collection is used. This can use all of the
AUR package managers and falls back to `makepkg` if none of them are
installed. That is also why we install `fakeroot` as the first package on
Archlinux, since that will be needed to build and install the AUR packages.

## Missing distributions

The vim role has only been tested on distro's that I use myself. You can run
the `test-facts.yml` to find out what distribution ansible will detect your
system as. You can then create a file with the distribution name and `.yml`
extension in the `roles/vim/vars/` directory and add the appropriate packages
for your distribution to that.

## Running the playbook

Run the playbook as the user that you want to install the settings for, since
the files need to be installed in the users home folder. For the distribution
where elevated priviliges are needed, this is set via the playbook. Normally
you should be able to run the playbook with `ansible-playbook deploy-vim.yml`.
If you get a message that you are not authorized, run as `ansible-playbook -K
deploy-vim.yml` and enter your sudo password when prompted. That way the
packages should get installed properly.

For a quick one-time install, you can also use the `ansible-pull` command.
Using `ansible-pull --purge -U https://github.com/mafprod/deploy-vim.git
deploy-vim.yaml`, the repo is pulled to the `~/.ansible/pull` directory, the
`deploy-vim.yml` playbook is executed and after the run, the pulled repository
is deleted. As with the previous method, the `-K` switch might need to be
added if you get an error regarding permissions.

## License

BSD 3-Clause
