; example1.nsi
;
; This script is perhaps one of the simplest NSIs you can make. All of the
; optional settings are left to their default settings. The installer simply 
; prompts the user asking them where to install, and drops a copy of example1.nsi
; there. 

;--------------------------------

; The name of the installer
Name "Example1"

; The file to write
OutFile "example1.exe"

; The default installation directory
InstallDir $DESKTOP\Example1

; Request application privileges for Windows Vista
RequestExecutionLevel user

;--------------------------------

; Pages
# gives user the ability to accelt EULA.
Page license
# allows us to set the components we are installing.
Page components
# gives the user the choice of where they want to install files
Page directory
# this is required otherwise we will not run the first section.
Page instfiles

;--------------------------------

; The stuff to install
Section "" ;No components page, name is not important

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File testing.nsi
  
SectionEnd ; end the section
