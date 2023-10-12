<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_persona.aspx.cs" Inherits="App_roles.frm_persona" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulario de Registro de Usuarios</title>
    <link rel="stylesheet" type="text/css" href="estilos.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <h3>Formulario de Registro de Personas</h3>
            <div class="form-group">
                <asp:TextBox ID="txt_codigo" runat="server" placeholder="ID *" required ="true"></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_pnombre" runat="server" placeholder="Primer Nombre *"></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_snombre" runat="server" placeholder="Segundo Nombre "></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_papellido" runat="server" placeholder="Primer Apellido *" ></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_sapellido" runat="server" placeholder="Segundo Apellido " ></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_contacto" runat="server" placeholder="Contacto *" ></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_correo" runat="server" placeholder="Correo *" ></asp:TextBox> 
            </div>
            

            <asp:DropDownList ID="cbx_sexo" runat="server" CssClass="cbx">
                <asp:ListItem Value="0 ">Hombre</asp:ListItem>
                <asp:ListItem Value="1 ">Mujer</asp:ListItem>
                <asp:ListItem Value="2 ">Transformer</asp:ListItem>
            </asp:DropDownList>

            <div class="btn-group">
                <asp:Button ID="btn_registrar" runat="server" Text="Registrar" CssClass="btn"   />
                <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" CssClass="btn btn-cancelar"   />
                <asp:Button ID="btn_consultar" runat="server" Text="Consulta" CssClass="btn"  />
            </div>
            <asp:Label ID="lbl_mensaje" runat="server" ForeColor="Black"></asp:Label>
        </div>
    </form>
</body>
</html>