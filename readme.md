# Neovim Installation and Configuration Guide

🚀Tested only on UBUNTU🚀

## Initial Setup

1. Run the provided installation script.
2. When Neovim opens for the first time:
   - Press `q` repeatedly until you reach the main Neovim screen.
   - Type the following commands one by one:
     ```vim
     :so %
     :PackerSync
     ```
   - You may need to run `:PackerSync` a second time to ensure all plugins are installed.

## Troubleshooting

If you encounter any errors on the next boot, follow these recovery steps:

1. Boot into **Ubuntu Recovery Mode**.
2. Select **Enable Networking** to access necessary packages.
3. Open a terminal as the root user.
4. Run the following command to reinstall the Ubuntu desktop environment:
   ```bash
   sudo apt install ubuntu-desktop
   ```
5. After the installation completes, reboot your system:
   ```bash
   reboot
   ```

ENJOY
