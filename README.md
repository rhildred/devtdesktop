# devtdesktop
This is my current development environment bootstrap to be run with curl to set up a user with sudo and docker groups. I use it instead of carrying a laptop between my 3 teaching gigs. 

Start up a Ubuntu Amazon instance and run:

`bash <(curl https://rhildred.github.io/devtdesktop/toaster.sh) <your desired username here>`

Sadly I can't find a way to get visual studio code without using chrome. I did install Chrome as a way of getting Visual Studio Code and instructions for most everything else. Download Visual Studio Code with chrome and install it with gdebi. Something like `sudo gdebi ~/Downloads/code........deb`

Also sadly, I tried this with Ubuntu 18.04 and it was very slow. I tried the exact thing with 16.04 and it is fine. With Ubuntu 16.04 there was a hack that I needed to get vscode working. I had to edit the elf file `/usr/lib/x86_64-linux-gnu/libxcb.so.1.1.0` and change the one occurence of the word `BIG` to `FIG`. You couldn't make something like this up.

Mate with xrdp and Ubuntu 16.04 doesn't deal with `alt-tab` properly. I couldn't find an acceptable fix.

Once VSCode was installed I also installed extensions ritwickdey.liveserver and streetsidesoftware.code-spell-checker.

I used `nvm ls-remote` to find the latest nvm version. Then I did `nvm install x.x.x` to install it.

Sadly, there are problems with this. Xrdp auto-install breaks it so I need to revert every time I use it. My plan is to shut this down in favour of my rhlab.io project built on docker-compose-ui. I really just need "edit in vscode on the web" for that to work. It looks like that is do-able by replacing node builtins used by vscode like fs with shim modules like fs-remote.
