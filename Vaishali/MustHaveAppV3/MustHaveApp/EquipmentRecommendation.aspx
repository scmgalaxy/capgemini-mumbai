<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EquipmentRecommendation.aspx.cs" Inherits="MustHaveApp.EquipmentRecommendation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MUST HAVE</title>
    <link href="Styles/site.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.6/css/bootstrap.min.css" />
    <meta name="x-stylesheet-fallback-test" content="" class="sr-only" />
    <script>        !function (a, b, c) { var d, e = document, f = e.getElementsByTagName("SCRIPT"), g = f[f.length - 1].previousElementSibling, h = e.defaultView && e.defaultView.getComputedStyle ? e.defaultView.getComputedStyle(g) : g.currentStyle; if (h && h[a] !== b) for (d = 0; d < c.length; d++) e.write('<link rel="stylesheet" href="' + c[d] + '"/>') } ("position", "absolute", ["\/lib\/bootstrap\/dist\/css\/bootstrap.min.css"]);</script>
    <link rel="stylesheet" href="/Styles/site.min.css?v=1CgiuV_R58Ko6blv01aaHNqEh2XjZ4HYPqU2p6hLAeY" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous" />
    <meta name="x-stylesheet-fallback-test" content="" class="sr-only" />
    <script>        !function (a, b, c) { var d, e = document, f = e.getElementsByTagName("SCRIPT"), g = f[f.length - 1].previousElementSibling, h = e.defaultView && e.defaultView.getComputedStyle ? e.defaultView.getComputedStyle(g) : g.currentStyle; if (h && h[a] !== b) for (d = 0; d < c.length; d++) e.write('<link rel="stylesheet" href="' + c[d] + '"/>') } ("position", "absolute", ["\/lib\/font-awesome\/css\/font-awesome.css"]);</script>

</head>
<body>
<form runat="server">
    <nav class="header navbar navbar-default" style="margin-bottom:0px;top:0px;">
        <div class="container-fluid"> 
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header col-md-12" style="margin:0px 0px 0px 0px;height:75.40px">
                <div class='col-md-12'  style='padding: 0px 0px 0px 0px;vertical-align:middle;'><div class='col-md-6' style='top:20px;'><span class='glyphicon glyphicon-chevron-left' style='font-size:24px;'>Zurcuck</span></div><div class='col-md-6'  style='top:20px;'><i class='fa fa-comment-o fa-2x' style='float:right;' aria-hidden='true'></i></div></div>
              </div>
        </div><!-- /.container-fluid -->
    </nav>
    <div class="container-fluid body-content" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;">
        
<style>
    #tblRecommendations tr.active td {
        background-color:#e6e6e6;
    }

    .no-pad-marg {
        padding:0px 0px 0px 0px;
        margin:0px 0px 0px 0px;
    }

</style>
<div class="row container-fluid col-md-12 no-pad-marg" style="align-content:center;">
    
    <div class="col-md-6 no-pad-marg" style="height:auto;border-bottom:1px solid #e6e6e6;">
        <div class="col-md-12" style="height:60px;font-size:medium;vertical-align:middle;">
            <p><b>Zielfahrzeug</b></p>
        </div>
        <hr />
        <div class="container-fluid col-md-12 no-pad-marg" style="height:auto;">
            <p>TEIL EINES PAKETS</p>
            <p>
            <asp:GridView runat="server" AutoGenerateColumns="false" ID="tblRecommendations" 
                    CssClass="table table-hover" BorderWidth="0">
                <Columns>
                <asp:TemplateField>
                <ItemTemplate><i class="fa fa-puzzle-piece" aria-hidden="true"></i></ItemTemplate>
                </asp:TemplateField>
                <asp:ImageField ControlStyle-CssClass="fa fa-puzzle-piece"></asp:ImageField>
                <asp:BoundField DataField="Code" HeaderText="Code" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:TemplateField>
                <ItemTemplate>
                <span class="glyphicon glyphicon-chevron-right"></span>               
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
            </asp:GridView>

            </p>
        </div>
        <hr />
        <div class="container-fluid col-md-12 no-pad-marg" style="height:auto;">
            <p>TEIL EINES PAKETS</p>
            <p>
            <asp:GridView runat="server" AutoGenerateColumns="false" ID="tblRecommendations2" CssClass="table table-hover" BorderWidth="0">
                <Columns> 
                <asp:TemplateField>
                <ItemTemplate><i class="fa fa-puzzle-piece" aria-hidden="true"></i></ItemTemplate>
                </asp:TemplateField>
                <asp:ImageField ControlStyle-CssClass="fa fa-puzzle-piece"></asp:ImageField>
                <asp:BoundField DataField="Code" HeaderText="Code" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:TemplateField>
                <ItemTemplate><span class="glyphicon glyphicon-chevron-right"></span>
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
            </asp:GridView>

            </p>
        </div>
        <hr />     
        </div>
        <hr />
    </div>
    <div class="col-md-1 table-bordered no-pad-marg" style="height:600px;width:1px;"></div>
    <div class="col-md-5 no-pad-marg" style="height:auto;border-bottom:1px solid #e6e6e6;" id="packagesDiv">       </div>
    
</div>
<script src="/js/jquery-1.10.2.min.js"></script>
<script>
   
   
    var equipmentId;
    var objectsArray = [];

    $(document).ready(function () {
        // Switch buttons from "Log In | Register" to "Close Panel" on click
        $("#package1-toggle").click(function () {
            $("#package1-items").toggle();
            $("#package1-toggle").switchClass("glyphicon glyphicon-chevron-up col-md-2", "glyphicon glyphicon-chevron-down col-md-2", 1000, "easeInOutQuad");
        });

        
    });

    function changeColor(tr) {
        //alert($(tr).attr('id'));
        $(tr).parent().find('tr').removeClass("active");
        $(tr).addClass("active");
        equipmentId = parseInt($(tr).attr('txtOnlineCode'));
        objectsArray = [];
        //$.getJSON("http://localhost:1438/api/Equipment?id=" + equipmentId, function (data) {

        //    var packages = JSON.stringify(data);
        //    data.forEach(function (item) {
        //        getEquipmentsByPackageId(item.PackageId);
        //    });
        //});

        $.ajax({
            url: "http://pcfwebapi.azurewebsites.net/api/Equipment?id=" + equipmentId,
            dataType: 'json',
            async: false,
            //data: myData,
            success: function (data) {
                $('#packagesDiv').empty();
                var packages = JSON.stringify(data);
                data.forEach(function (item) {
                    setTimeout(getEquipmentsByPackageId(item.PackageId), 2000);
                });

            }
        });

    }

    function getEquipmentsByPackageId(Id) {

        $.ajax({
            url: "http://pcfwebapi.azurewebsites.net/api/package/get/" + Id,
            dataType: 'json',
            async: false,
            //data: myData,
            success: function (data) {
                //data.forEach(function (item) {
                //objectsArray.push(item);
                //});
                //addPackagesDiv(objectsArray);
                addPackagesDiv(data[0]);
            }
        });

    }



    function addPackagesDiv(data) {
        //objArray.forEach(function (item) {
        //item.forEach(function (innerItem) {
        $('#packagesDiv')
            .append("<div class='col-md-12' style='height:auto;order:1px solid #000;'>" +
                    "<p class='col-md-10' style='font-size:18px;' id='package1'><b>" + data.PackageId + ":" + data.PackageDescription + "</b><br /><label style='font-size:14px;'>(bereits 1 von 2 Ausstattungen)</label></p>" +
                    "<span class='glyphicon glyphicon-chevron-up col-md-2' id='package1-toggle'></span>" +
                    "<table class='col-md-12' style='font-size:15px' id='Package" + data.PackageId + "-items'>" +
                "</table></div>");
        //});
        addEquipmentsToTable($("#Package" + data.PackageId + "-items"), data);
        //});


    }

    function addEquipmentsToTable(tableId, data) {
        data.Equipments.forEach(function (item) {
            var d = false;

            data.MappedEquipmentsId.forEach(function (j) {
                if (j == item.Id)
                    d = true;
            });

            if (d == true) {
                d = "<label><input type='checkbox' checked='checked' id='equipment_" + item.Id + "' />" + item.Description + "</label>";
            }
            else {
                d = "<label><input type='checkbox' id='equipment_" + item.Id + "' />" + item.Description + "</label>";
            }
            tableId.append("<tr>" +
                        "<td>" +
                            "<div class='checkbox'>" +
                            d +
                            "</div>" +
                        "</td>" +
                    "</tr>")
        });

    }
</script>       
    </div>

    
    
        <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-2.2.0.min.js">
        </script>
<script>    (window.jQuery || document.write("<script src=\"\/lib\/jquery\/dist\/jquery.min.js\"><\/script>"));</script>
        <script src="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.6/bootstrap.min.js">
        </script>
<script>    (window.jQuery && window.jQuery.fn && window.jQuery.fn.modal || document.write("<script src=\"\/lib\/bootstrap\/dist\/js\/bootstrap.min.js\"><\/script>"));</script>
        <script src="/js/site.min.js?v=47DEQpj8HBSa-_TImW-5JCeuQeRkm5NMpJWZG3hSuFU"></script>
    

</form>    
</body>

</html>
