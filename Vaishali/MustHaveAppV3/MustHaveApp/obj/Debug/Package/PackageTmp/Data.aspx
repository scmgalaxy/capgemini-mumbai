<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="MustHaveApp.Data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:TextBox TextMode="MultiLine" ID="txtError" runat="server" Columns="150" Rows="15"></asp:TextBox> 
     <asp:Button runat="server" ID="btnTest" Text="Test me" onclick="btnTest_Click" />
    </div>
    </form>
</body>
</html>
