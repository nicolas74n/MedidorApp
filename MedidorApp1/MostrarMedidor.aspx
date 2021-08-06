<%@ Page Title="Mostrar Medidor" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarMedidor.aspx.cs" Inherits="MedidorApp1.MostrarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
        <div class="row mt-5">
        <div class="col-lg-6-mx-auto">
        </div>

    </div>
    <div class="row mt-5">
        <asp:GridView ID="grillaMedidor"
            CssClass="table table-hover table-bordered"
            AutoGenerateColumns="false"
            ShowHeaderWhenEmpty ="true"
            EmptyDataText="No hay Registros"
            OnRowCommand="grillaMedidor_RowCommand"
            runat ="server">
            <Columns>
                <asp:BoundField HeaderText="Número medidor" DataField="Numero_medidor" />
                <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                <asp:BoundField HeaderText="Valor del consumo" DataField="Valor_consumo" />
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button CssClass="btn btn-danger" runat="server"
                            CommandName="eliminar" Text="Eliminar"
                            CommandArgument='<%# Eval("Id") %>' />
                    </ItemTemplate>
            </asp:TemplateField>
            </Columns>
            </asp:GridView>
    </div>
</asp:Content>

