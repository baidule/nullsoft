OutFile "installer.exe"

# define installation directory
InstallDir $DESKTOP

# For removing Start Menu shortcut in Windows7
RequestExecutionLevel user

# installer section
Section    
    # set the installation directory as the destination for the following actions    
    SetOutPath $INSTDIR
    
    # create the uninstaller
    WriteUninstaller $INSTDIR\uninstaller.exe
    
    # craete a shortcut named "new shortcut" in the start menu programs directory
    # point the new shortcut at the program uninstaller
    CreateShortCut "$SMPROGRAMS\new shortcut.link" "$INSTDIR\uninstall.exe"    
SectionEnd

#uninstaller section starting
Section "Uninstall"
    
    #first, delete the uninstaller
    Delete "$INSTDIR\uninstaller.exe"
    
    #second, remove the link from the start menu
    Delete "$SMPROGRAMS\new shortcut.link"
#uninstaller section end
SectionEnd