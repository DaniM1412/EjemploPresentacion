using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlP1.Clases;

namespace SqlP1.Forms
{
    public partial class Registro : System.Web.UI.Page
    {
        ConexionesBD _objConecBD = new ConexionesBD();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void txtContraseña_TextChanged(object sender, EventArgs e)
        {
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {

            //BUENOOO
            Datos.Password = txtContraseña.Text;
            if (Datos.Password.Equals(txtConfirmacion.Text))
            {
                Datos.Nombre = txtnombre.Text;
                Datos.correo = txtcorreo.Text;
                Datos.telefono = txtTelefono.Text;
                if (_objConecBD.ContraSafe(Datos.Password))
                {
                    _objConecBD.SPregistro(Datos.Nombre,Datos.correo,Datos.telefono,Datos.Password);
                    Response.Redirect("login.aspx");
                }
                else
                {
                    lblAdvertencia.Text = "La contraseña debe de tener una mayuscula, minuscula, caracter y número";
                }
            }
            else
            {
                lblAdvertencia.Text = "Error al confirmar contraseña";
            }



            


        }
    }
}