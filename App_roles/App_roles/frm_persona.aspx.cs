using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App_roles
{
    public partial class frm_persona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_registrar_Click(object sender, EventArgs e)
        {
            //creo un objeto de la clase persona para llamar a su función registrar
            cls_personas ObjPersonasRegistrar = new cls_personas();

            //como atributo le paso lo que el usuario haya escrito en los campos
            ObjPersonasRegistrar.fnt_agregar(
                txt_codigo.Text,
                txt_pnombre.Text,
                txt_snombre.Text,
                txt_papellido.Text,
                txt_sapellido.Text,
                txt_contacto.Text,
                txt_correo.Text,
                cbx_sexo.SelectedValue
                );

            //en el formulario tengo un label lbl_mensaje
            //ese mensaje cambiará dependiendo si en cls_persona se pudo guardar o no la persona
            //uso el objeto ya creado para llamar a la función getMensaje

            lbl_mensaje.Text = ObjPersonasRegistrar.getMensaje();
        }
    }
}