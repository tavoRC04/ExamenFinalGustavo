using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace ExamenFinal.Presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        private void Page_Load(object sender, EventArgs e)
        {

        }

        public void LoginBtn_Click(object sender, EventArgs e)
        {
           using (SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-JQ9J83M\SQLEXPRESS;Initial Catalog=examenfinal;Integrated Security=True;Encrypt=False"))
            {
                SqlCommand cmd = new SqlCommand("select * from Agentes where Nombre='" + Username.Text + "' and Contrasena='" + Password.Text + "'", cn);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (Username.Text != string.Empty || Password.Text != string.Empty)
                {


                    if (dr.Read())
                    {
                 
                        Response.Redirect("CatalogoAgente.aspx");

                    }
                    else
                    {
                        dr.Close();
                        Response.Write("<script>alert('No existe un agente con esos credenciales')</script>");
                       
                    }

                }
                else
                {
                    Response.Write("<script>alert('Por favor rellene todos los campos.')</script>");
              }

            }
            
        }

     
    }
}
