# Batch Tools (BT)

> A small `command-line` toolbox made with Windows Batch.

Batch Tools, or **BT**, is a `.bat` script that provides quick access to commonly used CMD commands and basic Windows system utilities through a simple command menu.

> **Current version:** `v0.0.2 alpha`  
> This project is still in early development, so bugs and unfinished features are expected.

## Features

BT currently includes commands for:

- Viewing network information with `ipconfig`
- Clearing the DNS cache with `flushdns`
- Displaying local IPv4 and IPv6 addresses with `myip`
- Pinging IP addresses
- Viewing system and user information
- Opening files and folders from the BT directory
- Renaming files and folders
- Cleaning temporary files
- Locking, sleeping, hibernating, logging out, restarting, or shutting down the PC
- And more...

## Requirements

- Windows 10 or Windows 11 (recommended)
- Command Prompt (`cmd.exe`)
- No installation or extra software required

> The script is primarily tested on Windows 11.  
> It may run on Windows 7/8/8.1, but:
> - Colors will not work in the default Command Prompt.
> - Some Unicode characters may display incorrectly.
> - Power-related commands (sleep, hibernate, shutdown) are not tested on Windows 8 and may behave differently.

## Installation

1. Download or `BT.bat`.
2. Place `BT.bat` in a folder of your choice.
3. Double-click `BT.bat`, or open Command Prompt in that folder and run:

```bat
BT.bat
```

## Usage

When BT starts, type a command and press `Enter`.

```text
C:\YourFolder\BT> help
```

Use `help`, `h`, `?`, or `BT` to view the built-in command list.

### Examples

```text
help
ipconfig
myip
flushdns
ping
systeminfo
cleanup
open example.txt
rename
bt --version
```

## ⚠️ Safety warning

BT includes commands that can **immediately**:

- Log you out
- Lock your PC
- Put your PC to sleep or hibernate
- Shut down or restart your computer
- Delete temporary files

Some commands are marked with `*` in the built-in `help` output. This means they were not fully tested in the current version (v0.0.1 alpha).

Use these commands only if you understand what they do. Avoid commands such as `logout`, `shutdown`, `restart`, `hibernate`, `lock`, `sleep`, and `cleanup` if you are unsure.

> Do not run BT as Administrator unless a command specifically requires it. Running scripts with elevated permissions can make mistakes more serious.

## Known issues

Because this is an alpha release, some features may not work correctly.

- Some power-related commands may be untested.
- Ping command variants may need improvement.
- Error messages and input validation are still being improved.
- Temporary-file cleanup may not remove files currently being used by Windows or other programs.

## Reporting issues

Found a bug, typo, or command that does not work?

Please open an issue on the [Issues page](https://github.com/TitasB2/Batch-Tools/issues). Include:

- Your Windows version
- The command you entered
- What you expected to happen
- What actually happened
- Any error message shown in the terminal
- Whatever else you want to add

## Contributing

Suggestions, bug reports, and improvements are welcome. Since this is an alpha project, feedback is especially useful.

## License

This project is licensed under the [MIT License](LICENSE).

---

###### Made with ❤️ by [Titas](https://github.com/TitasB2)
