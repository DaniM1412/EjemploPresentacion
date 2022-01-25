using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlP1.Clases;
using System.Data;
using System.Windows.Input;
namespace SqlP1.Forms
{
    public partial class Reserva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReserva_Click(object sender, EventArgs e)
        {
            String Resultado = "";
            ConexionesBD _objConecBD = new ConexionesBD();
            Datos.Nombre = txtnombre.Text;
            Datos.Pista = Pista.SelectedValue; ;
            Datos.Hora = Hora.SelectedValue;
            Resultado = _objConecBD.SPpista(Datos.Pista, Datos.Nombre,Datos.Hora);
            if (Resultado.Equals("0"))
            {
                Response.Redirect("Confirmacion.aspx");
            }
            else if (Resultado.Equals("1"))
            {
                lblAdver.Text = "La pista  elegida se encuentra ocupada, selecciona una pista distinta ";
            }
        }
    }
}