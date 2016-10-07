# instructions should instruct renaming C:\iag to C:\iag-old


# First we want to check if VC 14 is installed - by checking HKEY LM, 
    # if (HKLM != VC14) 
        # install upgrade
    # else 
        # do nothing


#Function CheckAndInstallVisualStudio14 
    # Let's see if the user has the VC 14 installed on their system or not
    
    # Set up our Variables
    #Var /GLOBAL isVisualStudioValid # boolean
    
    # We are reading a version release of visual studio


OutFile "installer.exe"

Section 
     ReadRegDWORD $0 HKLM "SOFTWARE\Microsoft\VisualStudio\14.0\Setup\Microsoft Build Tools 14.0 (amd64)" InstallSuccess

     MessageBox MB_OK "what is this: $0"
SectionEnd    