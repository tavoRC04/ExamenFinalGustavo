<%@ Page Title="" Language="C#" MasterPageFile="MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="CatalogoAgente.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h1>Gestión de Agentes</h1>

<form id="formAgregarAgente" onsubmit="agregarAgente(); return false;">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" require runat="server"><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required runat="server"><br>
    <label for="telefono">Teléfono:</label>
    <input type="tel" id="telefono" name="telefono" required runat="server"><br>
     <label for="contrasena">Contraseña:</label>
     <input type="text" id="contrasena" name="contrasena" required runat="server"><br>
    <asp:Button ID="AgregarAgente" CssClass="btn-submit" runat="server" Text="Agregar Agente" OnClick="AgregarAgente_Click"/>
</form>

<form id="formBorrarAgente" onsubmit="borrarAgente(); return false;">
    <label for="idBorrar">ID del Agente:</label>
    <input type="number" id="idBorrar" name="idBorrar" required  runat="server"><br>
    <asp:Button ID="BorrarAgente" CssClass="btn-submit" runat="server" Text="Borrar Agente" OnClick="BorrarAgente_click"/>
</form>

<form id="formModificarAgente" onsubmit="modificarAgente(); return false;">
    <label for="idModificar">ID del Agente:</label>
    <input type="number" id="idModificar" name="idModificar" required  runat="server"><br>
    <label for="nombreModificar">Nuevo Nombre:</label>
    <input type="text" id="nombreModificar" name="nombreModificar"  runat="server"><br>
    <label for="emailModificar">Nuevo Email:</label>
    <input type="email" id="emailModificar" name="emailModificar"  runat="server"><br>
    <label for="telefonoModificar">Nuevo Teléfono:</label>
    <input type="tel" id="telefonoModificar" name="telefonoModificar"  runat="server"><br>
      <label for="contrasenaModificar">Contraseña:</label>
  <input type="text" id="contrasenaModificar" name="contrasenaModificar" required runat="server"><br>
   <asp:Button ID="Editar" CssClass="btn-submit" runat="server" Text="Editar Agente" OnClick="EditarAgente"/>
</form>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
