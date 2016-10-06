 Page license skipLicense "" stayInLicense
Page custom customPage "" ": custom page"
 Page instfiles

 Function skipLicense
   MessageBox MB_YESNO "Do you want to skip the license page?" IDNO no
     Abort
   no:
 FunctionEnd

 Function stayInLicense
   MessageBox MB_YESNO "Do you want to stay in the license page?" IDNO no
     Abort
   no:
 FunctionEnd


 Function customPage
     # stores the temporary directory or file this is?
   GetTempFileName $R0
   MessageBox MB_OK "whatever this is: $R0"
 FunctionEnd


Section
    
    
SectionEnd    