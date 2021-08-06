<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="MedidorApp1.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
        <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Ingreso de usuario</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="nombreTxt">Nombre</label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="nombreTxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe Ingresar un Nombre"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="rutTxt">Rut</label>
                        <asp:TextBox ID="rutTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="rutTxt" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar su RUT"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="correoTxt">Correo</label>
                        <asp:TextBox ID="correoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="correoTxt" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar un Correo electronico"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="contrasenaTxt">Contraseña</label>
                        <asp:TextBox ID="ContrasenaTxt" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="ContrasenaTxt" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe ingresar una contraseña"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">    
                        <label for="medidorDDL">Medidor</label><br />
                        <asp:DropDownList ID="medidorDDL" runat="server"></asp:DropDownList>
                    </div><br />
                    <label for="estadoDDL">Estado de pago</label><br />
                    <asp:DropDownList ID="estadoDDL" runat="server" AutoPostBack="true">
                      <asp:ListItem Text="Pagado" Selected="True" Value="Pagado"></asp:ListItem>
                     <asp:ListItem Text="No Pagado" Value="No Pagado"></asp:ListItem>
                     </asp:DropDownList><br />
                    <asp:Button OnClick="IngresarBtn_Click" runat="server" CssClass="btn btn-primary" ID="ingresarBtn" Text="Ingresar"/>
                </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
