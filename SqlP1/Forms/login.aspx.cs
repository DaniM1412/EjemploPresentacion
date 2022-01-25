using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlP1.Clases;
using System.Data;

namespace SqlP1.Forms
{
    public partial class login : System.Web.UI.Page
    {
        ConexionesBD _objConecBD = new ConexionesBD();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String Resultado = "";
            ConexionesBD _objConecBD = new ConexionesBD();
            Datos.User = txtcorreo.Text;
            Datos.Password = txtpassword.Text;
            Resultado = _objConecBD.SPLogueo(Datos.User, Datos.Password);
            //if (_objConecBD.ContraSafe(Datos.Password))
            //{
            //    btnLogin.Enabled = true;
            //}
            //else
            //{
            //    btnLogin.Enabled = false;
            //}
            if (Resultado.Equals("0"))
            {
                Response.Redirect("Registro.aspx");
            }
            else if(Resultado.Equals("1"))
            {
                Response.Redirect("Reserva.aspx");
            }
            //DataTable Resultado = new System.Data.DataTable();
            
          
            //_objConecBD.EjecutarSP(Datos.User, Datos.User);
       
            //gdvDatos.DataSource = _objConecBD.SPLogueo(Datos.User, Datos.Password);
            //gdvDatos.DataBind();
        }

        protected void txtpassword_TextChanged(object sender, EventArgs e)
        {
           
          
        }
    }
}