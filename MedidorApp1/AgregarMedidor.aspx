<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarMedidor.aspx.cs" Inherits="MedidorApp1.AgregarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
        <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Ingreso de medidor</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="numeroMedidorTxt">Número del medidor</label>
                        <asp:TextBox ID="numeroMedidorTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="numeroMedidorTxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe Ingresar número del medidor"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="fechaTxt">Fecha</label>
                        <asp:TextBox ID="fechaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="fechaTxt" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar fecha"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="valorConsumoTxt">Valor del consumo</label>
                        <asp:TextBox ID="valorConsumoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="valorConsumoTxt" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar valor del consumo"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button OnClick="IngresarBtn_Click" runat="server" CssClass="btn btn-primary" ID="ingresarBtn" Text="Ingresar"/>
                </div>
                </div>
            </div>
        </div>
</asp:Content>
