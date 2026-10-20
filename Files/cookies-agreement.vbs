Option Explicit

Dim fso, scriptFolder, markerFile, answer, file

Set fso = CreateObject("Scripting.FileSystemObject")

scriptFolder = fso.GetParentFolderName(WScript.ScriptFullName)
markerFile = fso.BuildPath(scriptFolder, "DO_NOT_DELETE.txt")

' Do not show again after accepting
If fso.FileExists(markerFile) Then
    WScript.Quit 0
End If

answer = MsgBox( _
    "Do you agree to continue using Batch Tools?", _
    vbYesNo + vbQuestion, _
    "Batch Tools Agreement" _
)

If answer = vbYes Then
    Set file = fso.CreateTextFile(markerFile, True, False)
    file.WriteLine "Agreement accepted."
    file.Close

    MsgBox "Thanks. You may now use Batch Tools.", vbInformation, "Batch Tools"
    WScript.Quit 0
Else
    MsgBox "You must agree before Batch Tools can start.", vbExclamation, "Batch Tools"
    WScript.Quit 1
End If