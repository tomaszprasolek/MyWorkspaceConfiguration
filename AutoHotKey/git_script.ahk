#SingleInstance force
#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_class CASCADIA_HOSTING_WINDOW_CLASS") || WinActive("ahk_exe Code.exe")

::grc::
{
    SendInput 'git rebase --continue'
}
::gmt::
{
    SendInput 'git mergetool'
}
::gpf::
{
    SendInput 'git push --force-with-lease'
}
::gch::
{
    SendInput 'git checkout '
}
; ::gcm::
; {
;     SendInput 'git checkout main'
; }
::gri::
{
    SendInput 'git rebase -i HEAD~'
}
::gc::
{
    SendInput 'git commit '
}
::gca::
{
    SendInput 'git commit --amend'
}
::gcan::
{
    SendInput 'git commit --amend --no-edit'
}
::gs::
{
    SendInput 'git status'
}
::gpu::
{
    SendInput 'git push -u origin'
}
::gpd::
{
    SendInput 'git push -d origin'
}
::gd::
{
    SendInput 'git diff'
}
::gdd::
{
    SendInput 'git diff --word-diff'
}
::gdc::
{
    SendInput 'git diff --cached'
}
::gl::
{
    SendInput 'git lgg'
}
::gll::
{
    SendInput 'git lg'
}
::gb::
{
    SendInput 'git branch '
}
::ga::
{
    SendInput 'git add .'
}
::glg::
{
    SendInput 'git lg --graph'
}
::gf::
{
    SendInput 'git fetch --all --prune'
}
; ::gm::
; {
;     SendInput 'git merge --no-ff -e -m "a" -'
; }
::gpp::
{
    SendInput 'git pull; git fetch --all --prune'
}
::gun::
{
    SendInput 'git checkout -b update-nugets'
    SendInput '{Enter}'
    Sleep 100
    SendInput 'git add .'
    SendInput '{Enter}'
    Sleep 100
    SendInput 'git commit -m "Update nugets"'
    SendInput '{Enter}'
    Sleep 100
    SendInput 'git push'
    SendInput '{Enter}'
    Sleep 100
    SendInput 'az repos pr create --delete-source-branch true --reviewers "[ASAI]\Backend_reviewers" --auto-complete true --open --title "Update nugets"'
    SendInput '{Enter}'
}
::ah::
{
    SendInput 'git addhashtotasknumber'
}
::dcu::
{
    SendInput 'docker-compose up --build -d'
}
::dcd::
{
    SendInput 'docker-compose down -v'
}
::spr::
{
    SendInput 'dnt switch-to-projects'
}
::spa::
{
    SendInput 'dnt switch-to-packages'
}
::pur::
{
   SendInput '$title = "UpdateNugets"; $prId = (az repos pr create --delete-source-branch true --reviewers "[ASAI]\Backend_reviewers" --auto-complete true --open --title "$title" | ConvertFrom-Json).codeReviewId; az repos pr update --id $prId --merge-commit-message "Merged PR $prId | $title"'
}
::pur2::
{
    SendInput '$title = (git log -1 --pretty=%s); $prId = (az repos pr create --delete-source-branch true --reviewers "[ASAI]\Backend_reviewers" --auto-complete true --open --title "$title" | ConvertFrom-Json).codeReviewId; az repos pr update --id $prId --merge-commit-message "Merged PR $prId | $title"'
}
::tc::
{
    SendInput 'dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=cobertura'
}
::tr::
{
    SendInput 'reportgenerator -reports:"coverage.cobertura.xml" -targetdir:"coveragereport" -reporttypes:Html'
}
::ts::
{
    Run '.\coveragereport\index.html'
}
