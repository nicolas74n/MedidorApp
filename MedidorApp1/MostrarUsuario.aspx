<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarUsuario.aspx.cs" Inherits="MedidorApp1.MostrarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
        <div class="row mt-5">
        <div class="col-lg-6-mx-auto">
            <asp:DropDownList ID="estadoDDL" runat="server" AutoPostBack="true" OnSelectedIndexChanged="estadoDDL_SelectedIndexChanged">
            <asp:ListItem Text="Todos" Selected="True"></asp:ListItem>
            <asp:ListItem Text="Pagado"  Value="Pagado"></asp:ListItem>
            <asp:ListItem Text="No Pagado" Value="No Pagado"></asp:ListItem>
            </asp:DropDownList>
        </div>

    </div>
    <div class="row mt-5">
        <asp:GridView ID="grillaUsuarios"
            CssClass="table table-hover table-bordered"
            AutoGenerateColumns="false"
            ShowHeaderWhenEmpty ="true"
            EmptyDataText="No hay Registros"
            OnRowCommand="grillaUsuario_RowCommand"
            runat ="server">
            <Columns>
                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                <asp:BoundField HeaderText="Rut" DataField="Rut" />
                <asp:BoundField HeaderText="Correo" DataField="Correo" />
                <asp:BoundField HeaderText="Medidor" DataField="Medidor.Numero_medidor" />
                <asp:BoundField HeaderText="Estado" DataField="Estado" />
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

