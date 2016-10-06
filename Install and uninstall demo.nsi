Outfile "Hellow world.exe"


#define the directory to install to, the desktop in this case as specified
InstallDir $DESKTOP

# default section
Section
    # define the output path for this file.
    SetOutPath $INSTDIR
    
    # define what to install and place it in the output path.
    File test.txt
    
    
    
    #define uninstaller name
    WriteUninstaller $INSTDIR\uninstaller.exe
    
    
SectionEnd

# create a section to define what the uninstaller does.
# the secion will always be named "Uninstall"
Section "Uninstall"
    
    # Always delete uninstaller first
    Delete $INSTDIR\uninstaller.exe
    
    # Now delete installed file
    Delete $INSTDIR\test.txt
    
SectionEnd    