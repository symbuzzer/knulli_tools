# Some useful scripts for Knulli 
## Tools
- **tool_CHECK_BOOT_RW**: Checks Boot partition status (RO or RW)
- **tool_CHECK_OVERLAY**: Checks batocera-overlay status (saved or none)
- **tool_CLEAR_OVERLAY**: Restores the batocera-overlay state if it was created
- **tool_DELETE_ETK**: Deletes es-theme-knulli if it is pre-installed and saves batocera-overlay
- **tool_M3U_PSX**: Create M3U playlist file from roms/psx folder
- **tool_PM_BUTTON_FIXER**: Fixes PortMaster button layout
- **tool_REVERT_PM_BUTTON**: Reverts PortMaster button layout
- **tool_RW_BOOT**: Makes the read-only Boot partition writable or read-only
- **tool_SAVE_OVERLAY**: Saves changes on overlay
- **tool_UNINSTALL_ETK**: Removes es-theme-knulli if it was installed in userspace by the user
- **tool_UPDATE_SCRIPTS**: Downloads and updates all scripts on there
- **[etk_tool](https://github.com/symbuzzer/etk_tool/releases/latest/download/etk_tool.pygame)**: Downloads and updates es-theme-knulli both installed systemspace (pre-installed) and userspace

## How to install and use?
- Download [main.zip](https://github.com/symbuzzer/knulli_tools/archive/refs/heads/main.zip) and extract all ```*.pygame``` files from it
- Copy them to ```roms/pygame``` folder as a game rom
- From Knulli, refresh gamelist and check ```PYGAME``` collection
- for ```etk_tool```, please look its [github repo](https://github.com/symbuzzer/etk_tool)

## How to update?
- Run ```tool_UPDATE_SCRIPTS``` from ```PYGAME``` collection
