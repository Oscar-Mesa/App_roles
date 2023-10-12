using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;

namespace App_roles
{
    public class cls_personas
    {
        private string str_id;
        private string str_Pnombre;
        private string str_Snombre;
        private string str_Papellido;
        private string str_Sapellido;
        private string str_contacto;
        private string str_correo;
        private int int_sexo;

        //variable para almacenar mensaje si se guarda correctamente o hay un error de guardado
        private string str_mensaje;

        //variable de tipo SqlCommand que me permite ejecutar consultas o comandos(SP) de SQL
        SqlCommand command;

        //me permite recorrer los resultados de una consulta ya hecha 
        SqlDataReader Lectura;


        //función del botón agregar, solicita argumentos que posteriormente serán 
        //enviados al procedimiento almacenado 
        public void fnt_agregar(string id, string Pnombre, string Snombre, string Papellido,
            string Sapellido, string contacto, string correo, string sexo)
        {
            //para poder enviar los parametros al procedimiento almacenado debo asegurarme
            //de que todos tengan un valor y ninguno esté vacío
            if ((id == "") || (Pnombre == "") || (Snombre == "") || (Papellido == "") || 
                (Sapellido == "") || (contacto == "") || (sexo == ""))
            {
                str_mensaje = "Debe llenar los campos obligatorios";

            }


        }

        public String getId() { return str_id;}
        public String getPnombre() {  return str_Pnombre;}
        public String getSnombre() {  return str_Snombre;}
        public String getPapellido() {  return str_Papellido;}
        public String getSapellido() { return str_Sapellido;}
        public String getContacto() { return str_contacto;}
        public String getCorreo() { return str_correo;}
        public int getSexo() { return int_sexo;}


        //sirve para actualizar pero por el momento no lo usaré 
        public void setContacto(String str_contacto) { this.str_contacto = str_contacto; }
        public void setCorreo(String str_correo) { this.str_contacto = str_correo; }
        public void setSexo(int int_sexo) { this.int_sexo = int_sexo; }

        //las unicas funciones serán consultas, cancelar y registrar


    }


}