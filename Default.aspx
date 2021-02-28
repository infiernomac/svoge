<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:UpdatePanel runat="server" ID="up">
        <ContentTemplate>
            <asp:ImageButton runat="server" 
                ID="imgBtn" onclick="imgBtn_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <div>
    </div>
    </form>
</body>
</html>
