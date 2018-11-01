# devtdesktop
This is my current development environment bootstrap to be run with curl to set up a user with sudo and docker groups. Start up a Ubuntu Amazon instance and run:

`bash <(curl https://rhildred.github.io/devtdesktop/toaster.sh) <your desired username here>`

Sadly I can't find a way to get visual studio code without using chrome. I did install Chrome as a way of getting Visual Studio Code and instructions for most everything else. Download Visual Studio Code with chrome and install it with gdebi. Something like `sudo gdebi ~/Downloads/code........deb`

Also sadly, I tried this with Ubuntu 18.04 and it was very slow. I tried the exact thing with 16.04 and it is fine. With Ubuntu 16.04 there was a hack that I needed to get vscode working. I had to edit the elf file `/usr/lib/x86_64-linux-gnu/libxcb.so.1.1.0` and change the one occurence of the word `BIG` to `FIG`. You couldn't make something like this up.
