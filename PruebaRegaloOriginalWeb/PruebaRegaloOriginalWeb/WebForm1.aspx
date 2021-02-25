<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PruebaRegaloOriginalWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddItems" runat="server" Height="18px" Width="99px">
                <asp:ListItem>Favoritos</asp:ListItem>
                <asp:ListItem>Carrito</asp:ListItem>
            </asp:DropDownList>
        </div>
        <p>
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
        </p>
        <asp:Label ID="lbNombre" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="tbNombre" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lbCantidad" runat="server" Text="Cantidad:"></asp:Label>
            <asp:TextBox ID="tbCantidad" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revCantidad" runat="server" ControlToValidate="tbCantidad" ErrorMessage="RegularExpressionValidator" ForeColor="#FF6666" ValidationExpression="[-+]?[0-9]*\.?[0-9]*"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="lbPrecio" runat="server" Text="Precio Unitario:"></asp:Label>
            <asp:TextBox ID="tbPrecio" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revPrecio" runat="server" ControlToValidate="tbPrecio" ErrorMessage="RegularExpressionValidator" ForeColor="#FF6666" ValidationExpression="[-+]?[0-9]*\.?[0-9]*"></asp:RegularExpressionValidator>
        </p>
        <asp:GridView ID="gvCarrito" runat="server">
        </asp:GridView>
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        <asp:Label ID="lbSubtotal" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="gvFavoritos" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
