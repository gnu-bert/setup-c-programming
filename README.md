# emacs-init.el
Emacs / Debian init.el for C-programming for beginner's like me + install compiler:)

# For debian 12.6

sudo apt install build-essential (c/c++ compiler)


sudo apt install emacs (GNU Emacs is the extensible self-documenting text editor.)


sudo apt install elpa-flycheck (modern on-the-fly syntax checking for Emacs.)


sudo apt install elpa-evil (extensible vi layer for Emacs)


copy init.el to your .emacs.d directory in your home folder.


# keybindings
M is the Altkey


C is the Ctrlkey

M-m (compile using your Makefile)


F5  (compile your current *.c file)


C-c o (open the header file at point/cursor)


evil-mode is not enable by default, but you can start it just hit M-x and type evil-mode


To always use evil mode just uncomment the two semicomas before (evil-mode) in init.el


;;(evil-mode t)

