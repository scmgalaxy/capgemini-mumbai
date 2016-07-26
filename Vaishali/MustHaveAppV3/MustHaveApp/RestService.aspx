<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestService.aspx.cs" Inherits="MustHaveApp.RestService" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="col-md-5 no-pad-marg" style="height:auto;border-bottom:1px solid #e6e6e6;" id="packagesDiv">
     <asp:GridView runat="server" AutoGenerateColumns="false" ID="tblRecommendations" 
                    CssClass="table table-hover" BorderWidth="0" >
                   
                <Columns>
               
                <asp:BoundField DataField="Description" HeaderText="Description" />
                
                </Columns>
            </asp:GridView>
            </div>
    </div>
    </form>
</body>
</html>
