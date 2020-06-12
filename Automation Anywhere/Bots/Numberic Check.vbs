
On Error Resume Next
Dim Number
Dim Result
Number=WScript.Arguments.Item(0)
MsgBox Number
If IsNumeric(Number) Then
    
  Result="True"
       wScript.StdOut.Write "Integer"
    
Else
	Result="False"
	wScript.StdOut.Write "Not an integer"
End if
MsgBox Result
return Result
If Err.Number <> 0 Then
  
  Err.Clear
End If 