<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><style type="text/css" media="all">@import "StyleSheet1.css";</style>
<SCRIPT LANGUAGE="vbscript" RUNAT="Server">

Function GetWebshareUser()
	Dim sUser 
	Dim sPath
	Dim intPos
	sUser = "test"
	sPath = Request.ServerVariables("PATH_INFO")
	If Left(sPath, 1) = "/" Then
		sPath = Right(sPath, Len(sPath) - 1)
	End If

	intPos = InStrRev(sPath, "/")
	sUser = Mid(sPath, 1, intPos - 1)
        GetWebshareUser = sUser 
end function
</SCRIPT> 
    <title>Webshare hemkatalog för <%=GetWebshareUser() %></title>
</head>
<body>
    <div id="content">
    <img alt="hkr" src="hkrlogotype.png" height="99" width="112" />
    <div id="info"><%


Response.Write "Välkommen till hemkatalogen för: " + GetWebshareUser()

%></div>
    </div>
</body>
</html>