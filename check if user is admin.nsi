OutFile "installer.exe"

Section 
    
    # call UserInfo plugin to get user info. The plugin puts the result in the stack.
    UserInfo::getAccountType

    # pop the result from the stack into $0
    Pop $0
    
    #compare the result with the string "Admin" to see if the user is admin.
    # If match, jump 3 lines down. Not literal, but 3 lines of code. so the third line
    # can technically be on line 100 and this condition being checked on like 10.
    StrCmp $0 "Admin" +3
    
    # if there is not a match, print message and return.
    MessageBox MB_OK "not admin: $0" 
    Return
    
    
    
    
    
    
    # otherwise, confirm and return
    MessageBox MB_OK "is admin"
    
# default section end    
SectionEnd