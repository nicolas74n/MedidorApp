using System;
using MedidorModel;
using MedidorModel.DAL;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidorApp1
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();
        private IMedidorDAL medidorDAL = new MedidorDALDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.medidorDDL.DataSource = this.medidorDAL.obtenerMedidores();
                this.medidorDDL.DataTextField = "Numero_medidor";
                this.medidorDDL.DataValueField = "Id";
                this.medidorDDL.DataBind();
            }
        }

        protected void IngresarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Usuario usuario = new Usuario();
                usuario.Nombre = this.nombreTxt.Text.Trim();
                usuario.Rut = this.rutTxt.Text.Trim();
                usuario.Correo = this.correoTxt.Text.Trim();
                usuario.Contrasena = this.ContrasenaTxt.Text;
                usuario.IdMedidor = Convert.ToInt32(this.medidorDDL.SelectedItem.Value);
                usuario.Estado = this.estadoDDL.SelectedItem.Value;
                this.usuarioDAL.AgregarUsuario(usuario);
                Response.Redirect("MostrarUsuario.aspx");
            }


        }
    }
}