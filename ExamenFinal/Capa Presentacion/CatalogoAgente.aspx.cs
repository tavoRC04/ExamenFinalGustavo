using ExamenFinal.CapaLogica;
using System;
using ExamenFinal.CapaLogica;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal.Capa_Presentacion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Agente_OP agente = new Agente_OP();
            DataTable dataAgente = agente.ObtenerAgentes();
            GridView1.DataSource = dataAgente;
            GridView1.DataBind();
        }

        protected void AgregarAgente_Click(object sender, EventArgs e)
        {
            string incontrasena = contrasena.Value;
            string innombre = nombre.Value;
            string inemail = email.Value;
            string intelefono = telefono.Value;
            Agente_OP agente = new Agente_OP();
            agente.AgregarAgente(innombre, inemail, intelefono, incontrasena);
        }

     

        protected void EditarAgente(object sender, EventArgs e)
        {
            string idAgente = idModificar.Value;
            string incontrasena = contrasenaModificar.Value;
            string innombre = nombreModificar.Value;
            string inemail = emailModificar.Value;
            string intelefono = telefonoModificar.Value;
          
            Agente_OP agente = new Agente_OP();
            agente.ModificarAgente(Int32.Parse(idAgente), innombre, inemail, intelefono, incontrasena);
        }

        protected void BorrarAgente_click(object sender, EventArgs e)
        {
            string idAgente = idBorrar.Value;
            Agente_OP agente = new Agente_OP();
            agente.BorrarAgente(Int32.Parse(idAgente));
        }
    }
}