using MedidorModel;
using MedidorModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidorApp1
{
    public partial class MostrarUsuario : System.Web.UI.Page
    {
        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();
        private void cargarGrilla(List<Usuario> usuarios)
        {
            this.grillaUsuarios.DataSource = usuarios;
            this.grillaUsuarios.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargarGrilla(this.usuarioDAL.ObtenerUsuarios());
            }
        }

        protected void estadoDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            string estado = this.estadoDDL.SelectedValue;
            List<Usuario> usuario = this.usuarioDAL.ObtenerUsuarios(estado);
            List<Usuario> todosUsuarios = this.usuarioDAL.ObtenerUsuarios();
            if(estado.Equals("Todos"))
            {
                this.cargarGrilla(todosUsuarios);
            }
            else
            {
                this.cargarGrilla(usuario);
            }
            
        }

        protected void grillaUsuario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("eliminar"))
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.usuarioDAL.EliminarUsuario(id);
                this.cargarGrilla(this.usuarioDAL.ObtenerUsuarios());
            }
        }
    }
}