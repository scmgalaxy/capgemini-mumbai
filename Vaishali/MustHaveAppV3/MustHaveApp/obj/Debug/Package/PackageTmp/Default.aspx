<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MustHaveApp.Default" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MUST HAVE</title>
    <link href="Styles/site.min.css" rel="stylesheet" type="text/css" />
    <!--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            document.getElementById("divRecommendation").style.display = "none";
            $("#btnRecommendation").click(function () {
                var obj = {};
                obj.OnlineCode = $.trim($("[id*=txtOnlineCode]").val());
                $.ajax({

                    type: "POST",
                    contentType: "application/json; charset=utf-8",

                    url: "HomePage.aspx/BindDatatable",
                    data: JSON.stringify(obj),
                    dataType: "json",
                    success: function (data) {

                        for (var i = 0; i < data.d.length; i++) {
                            $("#tbDetails").append("<tr><td>" + data.d[i].Code + "</td><td>" + data.d[i].Description + "</td></tr>");
                        }

                        document.getElementById("divHome").style.display = "none";
                        document.getElementById("divRecommendation").style.display = "block";
                    },
                    error: function (result) {
                        alert("Error");
                    }
                });
            });
        });
    </script>
        -->
    <link href="Styles/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <meta name="x-stylesheet-fallback-test" content="" class="sr-only" />
    <script>        !function (a, b, c) { var d, e = document, f = e.getElementsByTagName("SCRIPT"), g = f[f.length - 1].previousElementSibling, h = e.defaultView && e.defaultView.getComputedStyle ? e.defaultView.getComputedStyle(g) : g.currentStyle; if (h && h[a] !== b) for (d = 0; d < c.length; d++) e.write('<link rel="stylesheet" href="' + c[d] + '"/>') } ("position", "absolute", ["\/lib\/bootstrap\/dist\/css\/bootstrap.min.css"]);</script>
    <link rel="stylesheet" href="/Styles/site.min.css?v=1CgiuV_R58Ko6blv01aaHNqEh2XjZ4HYPqU2p6hLAeY" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous" />
    <meta name="x-stylesheet-fallback-test" content="" class="sr-only" />
    <script>        !function (a, b, c) { var d, e = document, f = e.getElementsByTagName("SCRIPT"), g = f[f.length - 1].previousElementSibling, h = e.defaultView && e.defaultView.getComputedStyle ? e.defaultView.getComputedStyle(g) : g.currentStyle; if (h && h[a] !== b) for (d = 0; d < c.length; d++) e.write('<link rel="stylesheet" href="' + c[d] + '"/>') } ("position", "absolute", ["\/lib\/font-awesome\/css\/font-awesome.css"]);</script>


</head>
<body>
<form id="Elv" class="form-horizontal" method="get" action="EquipmentRecommendation.aspx">
    <nav class="header navbar navbar-default" style="margin-bottom:0px;top:0px;">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header col-md-12" style="margin:0px 0px 0px 0px;height:75.40px">
                <div class='col-md-12' style='padding: 0px 0px 0px 0px;'><div class='col-md-6' style='padding: 0px 0px 0px 0px;'><h2>MUST <i class='fa fa-trophy' aria-hidden='true'></i> HAVE</h2></div><div class='col-md-6'><img src='/images/webapp.png' alt='Web App' class='img-logo pull-right' /></div></div>
            </div>
        </div><!-- /.container-fluid -->
    </nav>
    <div class="container-fluid body-content" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;">

        <br />
        <div class="row">
            <div class="span6 col-md-6" style="padding-left:40px;" id="divRecommendation">
                <h3>Altfahrzeug</h3>                
                    <div id="pad_left" class="form-group">
                        <label for="someNumber">Fahrgestellnummer:</label>
                        <input type="number" class="form-control" id="someNumber" placeholder="Number">
                    </div>

                    <div class="form-group">
                        <h5 id="pad_left">ZUSAMMENFASSUNG</h5>
                        <label for="Name" class="control-label col-xs-3">Baureihe:</label>
                        <div class="col-xs-9">
                            <p class="form-control-static">E-Klasse</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Year" class="control-label col-xs-3">Baujahr:</label>
                        <div class="col-xs-9">
                            <p class="form-control-static">2013</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Company" class="control-label col-xs-3">Aufbau:</label>
                        <div class="col-xs-9">
                            <p class="form-control-static">Limousine</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Model" class="control-label col-xs-3">Model:</label>
                        <div class="col-xs-9">
                            <p class="form-control-static">E220 CDI</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail" class="control-label col-xs-3">Ausstattung:</label>
                        <div class="col-xs-9">
                            <p class="form-control-static">Awantgarde</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="frontColor" class="control-label col-xs-3">Polster:</label>
                        <div class="col-xs-9">
                            <p class="form-control-static"><span class="color-box black"></span> 221 Lederschwarz</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="rearColor" class="control-label col-xs-3">Lackierung:</label>
                        <div class="col-xs-9">
                            <p class="form-control-static"><span class="color-box grey"></span> 775 Iridum Silber</p>
                        </div>
                    </div>                
            </div>

            <div class="span6 col-md-6">
                <h3 id="pad_left">Zielfahrzeug</h3>
                <div class="col-md-12">
                    <div id="grey_back" class="col-xs-6">

                        <p style="font-style:italic">Noch kein konfiguriertes Fahrzeug vorhanden?</p>
                        <br />
                        <div class="form-group">
                            <label for="baureihe">Baureihe:</label>
                            <input type="text" class="form-control" id="baureihe" value="E-Klasse" disabled>
                        </div>
                        <br />
                        <div class="form-group">
                            <label for="baureihe">Aufbau:</label>
                            <div>
                                <i class="fa fa-car fa-3x" aria-hidden="true"></i>
                                <i class="fa fa-truck fa-3x margin_left fa-inverse" aria-hidden="true"></i>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <label for="baureihe">Motor:</label>
                            <div>
                                <select class="selectpicker">
                                    <option>E220 Diesel</option>
                                    <option>E220 Petrol</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div id="grey_back" class="margin_left col-xs-5">
                        <p style="font-style:italic">Existient bereits ein konfigurierties Fahrzeug?</p>
                        <br />
                        <div class="form-group">
                            <label for="baureihe">Online Code oder Auftrasnummer:</label>
                            <input type="text" class="form-control" placeholder="Customer Online Code" id="txtOnlineCode" runat="server" width="50%">
                               
                               <%--<asp:TextBox ID="txtError" runat="server" style="display:none"></asp:TextBox>
                               <asp:Button runat="server" ID="btnTest_Click" style="display:none" onclick="btnTest_Click_Click" />--%>
                               
                        </div>
                    </div>
                </div>
                <div class="col-md-12 text-center">
                    <button type="submit" id="btnRecommendation" runat="server" class="btn btn-default navbar-btn submit-button"><i class="fa fa-star" aria-hidden="true"></i> Ausstattungsempfehlungen</button>
                </div>
                <div class="col-md-12 text-center">
                    <button type="submit" class="btn btn-default navbar-btn submit-button" ><i class="fa fa-newspaper-o" aria-hidden="true"></i> PreSalesNews</button>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-12 text-center ">
                <button type="button" class="btn btn-default navbar-btn submit-button" onclick="location.href = 'http://carconfigurator.azurewebsites.net/Home/Recommendation';"><i class="fa fa-files-o" aria-hidden="true"></i> Ausstattungsvergleich</button>
            </div>
        </div>

    </div>



    <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-2.2.0.min.js">
    </script>
    <script>        (window.jQuery || document.write("<script src=\"\/lib\/jquery\/dist\/jquery.min.js\"><\/script>"));</script>
    <script src="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.6/bootstrap.min.js">    </script>
    <script>        (window.jQuery && window.jQuery.fn && window.jQuery.fn.modal || document.write("<script src=\"\/lib\/bootstrap\/dist\/js\/bootstrap.min.js\"><\/script>"));</script>
    <script src="/js/site.min.js?v=47DEQpj8HBSa-_TImW-5JCeuQeRkm5NMpJWZG3hSuFU"></script>


</form>
</body>

</html>

