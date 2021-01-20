# cygwin-setup
Cygwin development environment configuration using Git Bash to bootstrap.

## Emacs for Windows

When running Cygwin Emacs (/usr/bin/emacs-32w.exe) the Chrome browser,
or less frequently another process, becomes blocked until Emacs is
closed. (Suspect this is a conflict with corporate anti-virus
software?) This was observed by inspecting "Analyze wait chain" for
the unresponsive process in the Details tab of Task Manager.

### Workaround

Use the official Gnu Emacs for Windows executable (so far, so good).

* Review https://www.emacswiki.org/emacs/MsWindowsInstallation and
  https://opensource.com/article/20/3/emacs-windows. Adjust below
  guidance as needed.
* Download and unzip (current as of 2021-01-13)
https://ftp.gnu.org/gnu/emacs/windows/emacs-27/emacs-27.1-i686-no-deps.zip
into ~/Downloads/Emacs/.
* In Windows settings, set User Environment variable HOME to %USERPROFILE%
* Create a shortcut to bin/runemacs relative to the above directory.
* Edit shortcut Properties to set starting directory to %HOME%.
* Copy shortcut somewhere it can be readily launched (e.g. Taskbar,
  Start Menu, Desktop).

The most annoying user experience between Cygwin and Gnu Emacs seen so
far are the incompatible file paths stored in
~/.emacs.d/.emacs.desktop. Just use one or the other and stick with
it.
