#Name the installer
OutFile "installer.exe"

#default section
Section
    
    # create a shortcut named "new shortcut" in the start menu programs directory
    # presently, the new shortcut doesn't call anything (second field is blank)
    createShortCut "$SMPROGRAMS\new shortcut.link" ""
    
    # to delete shortcut, go to start menu directory and manually delete it
    
#default sec end
SectionEnd