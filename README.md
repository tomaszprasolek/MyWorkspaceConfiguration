# MyWorkspaceConfiguration
My workspace configuration description and instructions how to do it

- **Git for Windows** - [https://gitforwindows.org](https://gitforwindows.org)
- **Sublime Text** - [https://www.sublimetext.com](https://www.sublimetext.com)
  - Package: **JSON Pretty** (In Sublime: CTRL + SHIFT + P >> Package Control: Install Package >> Pretty JSON)
- **Auto Hot Key** - [https://www.autohotkey.com](https://www.autohotkey.com)
  - Script: [git_script.ahk](https://gist.github.com/tomaszprasolek/d742cc607666bd635a5226a008fd3d84)
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
    - Copy to file content from here: [Powershell config](https://gist.github.com/tomaszprasolek/9140359ab93668773addb6e233c7e6b1)
      - Change user name in path `C:\Users\Tomasz.Prasolek\...`
      - Check if Sublime path is correct
      - Create file `illusi0n.omp.json` on disk and ipdate path to this file. Copy content from here: [illusi0n.omp.json](https://gist.github.com/tomaszprasolek/c4535f31644f8a492af1785e0197d84f)
    - **Restart the terminal**, close and open it again
    - Settings (`CTRL + ,`) > Startup > Launch Parameters > Launch Mode > Maximized
    - Set default folder if needed
      - Settings (`CTRL + ,`) > Defaults > Starting directory
     
  ## TODO
  [ ] Add instruction how to configure git email per workspace. Different for personal stuff, different for work
