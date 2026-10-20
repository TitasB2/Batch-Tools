Option Explicit

Dim fso
Dim scriptFolder
Dim markerFile
Dim answer
Dim file

Set fso = CreateObject("Scripting.FileSystemObject")

scriptFolder = fso.GetParentFolderName(WScript.ScriptFullName)
markerFile = fso.BuildPath(scriptFolder, "DO_NOT_DELETE.txt")

If fso.FileExists(markerFile) Then
    WScript.Quit 0
End If

answer = MsgBox("Do you agree with cookies?", vbYesNo + vbInformation, "Cookie Agreement")

If answer = vbYes Then
    Set file = fso.CreateTextFile(markerFile, True, False)
    file.WriteLine "Cookie agreement accepted."
    file.Close
    answer = MsgBox("You agreed.", vbInformation + vbOKOnly, "Cookie Agreement")
    WScript.Quit 0
Else
    MsgBox "You did not agree.", vbCritical, "Cookie Agreement"
    WScript.Quit 1
End If