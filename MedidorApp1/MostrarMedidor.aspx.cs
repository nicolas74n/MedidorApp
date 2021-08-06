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
    public partial class MostrarMedidor : System.Web.UI.Page
    {
        private IMedidorDAL medidorDAL = new MedidorDALDB();
        private void cargarGrillaMedidor(List<Medidor> medidor)
        {
            this.grillaMedidor.DataSource = medidor;
            this.grillaMedidor.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Medidor> medidor = this.medidorDAL.obtenerMedidores();
                this.cargarGrillaMedidor(medidor);
            }
        }


        protected void grillaMedidor_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("eliminar"))
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.medidorDAL.EliminarMedidor(id);
                this.cargarGrillaMedidor(this.medidorDAL.obtenerMedidores());
            }
        }
    }
}