# MyWorkspaceConfiguration
My workspace configuration description and instructions how to do it

- **Git for Windows** - [https://gitforwindows.org](https://gitforwindows.org)
  - Put config file: [.gitconfig](Git/.gitconfig) in path `C:\Users\{userName}\`
    - Set in the file the proper name, surname and email address
    - Check if Sublime Path is correct in `core.editor`
- **Sublime Text** - [https://www.sublimetext.com](https://www.sublimetext.com)
  - Package: **JSON Pretty** (In Sublime: CTRL + SHIFT + P >> Package Control: Install Package >> Pretty JSON)
- **Auto Hot Key** - [https://www.autohotkey.com](https://www.autohotkey.com)
  - Script: [git_script.ahk](AutoHotKey/git_script.ahk)
  - Put the script in the location: `C:\Users\{userName}\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`
- Windows Terminal Configuration (PowerShell)
  - **Oh My Posh**: [https://ohmyposh.dev/docs/installation/windows](https://ohmyposh.dev/docs/installation/windows)
    - `winget install JanDeDobbeleer.OhMyPosh --source winget`
    - Get fonts: [https://ohmyposh.dev/docs/installation/fonts](https://ohmyposh.dev/docs/installation/fonts)
      - `oh-my-posh font install`
      - Select `CascadiaMono` font
  - Configuration
      - Default shortcut in terminal: `CTRL + SHIFT + ,`. In your `settings.json` file, add the font.face attribute under the defaults attribute in profiles:
        ```
        {
            "profiles":
            {
                "defaults":
                {
                    "font":
                    {
                        "face": "CaskaydiaMono NF"
                    }
                }
            }
        }
        ```
    - **Run terminal as administrator**
    - `Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy RemoteSigned -Force`
    - `Install-Module PSReadLine -Force`
    - `Install-Module -Name Terminal-Icons -Repository PSGallery -Scope CurrentUser`
    - `New-Item -Type File -Path $PROFILE -Force` - creates the profile file for terminal
    - `notepad $PROFILE` - open file to edit
    - Copy to file content from here: [Powershell config](Powershell/powershellConfig.txt)
      - Change user name in path `C:\Users\Tomasz.Prasolek\...`
      - Check if Sublime path is correct
      - Create file `illusi0n.omp.json` on disk and ipdate path to this file. Copy content from here: [illusi0n.omp.json](https://gist.github.com/tomaszprasolek/c4535f31644f8a492af1785e0197d84f)
    - **Restart the terminal**, close and open it again
    - Settings (`CTRL + ,`) > Startup > Launch Parameters > Launch Mode > Maximized
    - Set default folder if needed
      - Settings (`CTRL + ,`) > Defaults > Starting directory
     
  ## TODO
  - [ ] Add settings file for Sublime (get it from work account)
  - [ ] Add git config file with aliases
  - [ ] Add instruction how to configure git email per workspace. Different for personal stuff, different for work
