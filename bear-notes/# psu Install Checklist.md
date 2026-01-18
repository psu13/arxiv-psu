# # psu Install Checklist

First:

trackpad settings
turn off all notifications
scroll bars
screen scaling - using default now ... but with larger menu bars and default text size
turn off automatically mark prompt lines in Terminal (edit menu)
turn off handoff
**turn off sound check in Music**
keyboard auto caps... turn off autocorrect
iCloud login (setup files are in iCloud drive now)
1password
desktop picture - iCloud drive
zombie picture - iCloud drive
OldPurr.aiff - iCloud drive
app store login
iMessage font size - Helvetica 15 it seems
Mail.app gmail, [kvdpsu.org](http://kvdpsu.org)
google drive for reader
keyboard shortcuts, see screen shot.
finder font size, see screen shot.

Basic:

Skim
iTunes - remember you MUST option-open Music for this to work.
	- for all but the main mac just open Music and let it cloud sync
	- option open is just for migrating the giant local library.
Backblaze
vs.code
bbedit <--- maybe not
adguard
chrome
cmu library
xcode
adobe CC (LR, LR Classic, Photoshop)
emacs
github
bin
dot files - in iCloud drive now
texlive
    shiny> ~/Library/Preferences/TeXShop.plist 
    copy ~/Library/TeXshop
    copy /usr/local/texlive/texmf-local and run the update script inside there.
stack
   curl -sSL https://get.haskellstack.org/ | sh
   also install llvm v12 for the old ghc compiler
   double check the LTS resolver in the web site setup to get a good compiler.
optional Haskell with ghcup
   curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
slack

python bullshit:
install homebrew for pdf-crop-margins
	brew install python
	brew install python-tk
	brew install pipx
	pipx ensurepath

install pdfCropMargins 
	pipx install pdfCropMargins
	the GUI does not work. i have worked around it.

pipx install doi2bib and friends (arxivcheck**,** title2bib, scihub2pdf, scihub2pdf, gscholar, bibcure)

Misc:

CCC
Documents
Movies
Show iTunes Store in Music
mp3tag

calibre + library - 4.x + DeDRM
defaults write .GlobalPreferences NSNavRecentPlacesLimit -int 12
brew install svn
~/Library/Developer/Xcode/UserData/FontAndColorThemes/psu.xccolortheme
mail auto-bcc
TunnelBear.app
airfoil - this requires no special setup anymore besides microphone access
brew install ffmpeg (for youtube-dl)
	- this will install a lot of bullshit.
youtube-dl (brew)
Mac DVD Ripper Pro.app
VinylStudio.app
XLD for FLAC stuff. avoid FLACTunes
db PowerAMP for ripping
[https://www.willus.com/k2pdfopt/](https://www.willus.com/k2pdfopt/)

to play MKV:
brew install --cask iina

Stupidest Shit Ever:

Slack colors
![](%23%20psu%20Install%20Checklist/Screenshot%202024-02-20%20at%209.06.02%E2%80%AFAM.png)
![](%23%20psu%20Install%20Checklist/Screenshot%202024-11-11%20at%207.43.05%E2%80%AFAM.png)
![](%23%20psu%20Install%20Checklist/Screenshot%202024-11-18%20at%2012.53.25%E2%80%AFPM.png)

Attic:

brew install imagemagick
	- this picks up ghostscript
	- not needed because ghostscript comes from TeXLive

old airfoil

#things
