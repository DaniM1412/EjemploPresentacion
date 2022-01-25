using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading.Tasks;
using System.Security.Cryptography;
using System.IO;

namespace SqlP1.Clases
{
    public class ConexionesBD
    {
        public string SPLogueo(string _user, string _password)
        {

            //conexion a nuestra base de datos 
           
            using (SqlConnection conect = new SqlConnection(ConfigurationManager.ConnectionStrings["PruebaAxel"].ConnectionString))
            {
                conect.Open();
                string _mensaje = "1";
                string Resultado="";
                SqlCommand _co = new SqlCommand("spUsuarioActivo", conect);
                _co.CommandType = CommandType.StoredProcedure;
                //AQUI VA EL STORED PROCEDURE
                _co.Parameters.AddWithValue("@Usuario", _user);
                _co.Parameters.AddWithValue("@Contraseña",_password);
               _co.Parameters.AddWithValue("@Mensaje", _mensaje);
                var returnParameter = _co.Parameters.Add("@Mensaje", SqlDbType.VarChar);
                returnParameter.Direction = ParameterDirection.ReturnValue;
                _co.ExecuteNonQuery();
                var Resultados = returnParameter.Value;
                Resultado = Resultados.ToString();
                SqlDataAdapter da = new SqlDataAdapter(_co);
                //DataTable Resultado = new DataTable();
                //da.Fill(Resultado);
                conect.Close();
                //_co.ExecuteNonQuery();
                //conect.Close();
                return Resultado;
            }


        }

        public string SPpista(string _nPista, string _nombre, string _hora)
        {
            using (SqlConnection conect = new SqlConnection(ConfigurationManager.ConnectionStrings["PruebaAxel"].ConnectionString))
            {
                conect.Open();
                string _mensaje = "", Resultado = "";
                SqlCommand _co = new SqlCommand("sp_Registro_Reserva", conect);
                _co.CommandType = CommandType.StoredProcedure;
                //AQUI VA EL STORED PROCEDURE
                _co.Parameters.AddWithValue("@NumeroPista", _nPista);
                _co.Parameters.AddWithValue("@NombreCompleto", _nombre);
                _co.Parameters.AddWithValue("@Hora", _hora);
                _co.Parameters.AddWithValue("@Mensaje", _mensaje);
                var returnParameter = _co.Parameters.Add("@Mensaje", SqlDbType.VarChar);
                returnParameter.Direction = ParameterDirection.ReturnValue;
                _co.ExecuteNonQuery();
                var Resultados = returnParameter.Value;
                Resultado = Resultados.ToString();
                //DataTable Resultado = new DataTable();
                //da.Fill(Resultado);
                conect.Close();
                //_co.ExecuteNonQuery();
                //conect.Close();
                return Resultado;
            }

        }

        public bool ContraSafe(string _password) 
        {
            bool may = false, min = false, num = false, carac = false;
            for (int i = 0; i < _password.Length; i++)
            {
                if (char.IsUpper(_password,i))
                {
                    may = true;
                }
                else if (char.IsLower(_password,i))
                {
                    min = true;
                }
                else if (char.IsDigit(_password,i))
                {
                    num = true;
                }
                else
                {
                    carac = true;
                }
            }

            if (may && min && num && carac.Equals(true) && _password.Length >=8)
            {
                return true;
            }
            return false;

        
         }

        public void SPregistro(string _nombre, string _correo, string _telefono, string _password) {

            using (SqlConnection conect = new SqlConnection(ConfigurationManager.ConnectionStrings["PruebaAxel"].ConnectionString))
            {
                conect.Open();
                string _mensaje = "", Resultado = "";
                SqlCommand _co = new SqlCommand("sp_Registro_UsuarioNuevo", conect);
                _co.CommandType = CommandType.StoredProcedure;
                //AQUI VA EL STORED PROCEDURE
                _co.Parameters.AddWithValue("@NombreCompleto", _nombre);
                _co.Parameters.AddWithValue("@CORREO", _correo);
                _co.Parameters.AddWithValue("@Telefono", _telefono);
                _co.Parameters.AddWithValue("@Contraseña", _password);
               
                //var returnParameter = _co.Parameters.Add("@Mensaje", SqlDbType.VarChar);
                //returnParameter.Direction = ParameterDirection.ReturnValue;
                _co.ExecuteNonQuery();
                //var Resultados = returnParameter.Value;
                //Resultado = Resultados.ToString();
                //DataTable Resultado = new DataTable();
                //da.Fill(Resultado);
                conect.Close();
                //_co.ExecuteNonQuery();
                //conect.Close();
                //return Resultado;
            }
        }

    }
}