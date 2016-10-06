OutFile "installer.exe"

Section
    
    # read the value from the registry into the $0 register - the value key in that path in HKLM is CurrentVersion
    ReadRegStr $0 HKLM "SOFTWARE\JavaSoft\Java Runtime Environment" CurrentVersion
    
    # print the result in a popup message box
    MessageBox MB_OK "version: $0"
    
SectionEnd    