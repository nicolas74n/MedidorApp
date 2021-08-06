using System;
using MedidorModel;
using MedidorModel.DAL;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.MobileControls;

namespace MedidorApp1
{
    public partial class AgregarMedidor : System.Web.UI.Page
    {
        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();
        private IMedidorDAL medidorDAL = new MedidorDALDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void IngresarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                DateTime datetime = DateTime.ParseExact(fechaTxt.Text, "dd/MM/yyyy", null);
                datetime = Convert.ToDateTime(datetime, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);

                Medidor medidor = new Medidor();
                medidor.Numero_medidor = Convert.ToInt32(this.numeroMedidorTxt.Text.Trim());
                medidor.Fecha = datetime;
                medidor.Valor_consumo = Convert.ToInt32(this.valorConsumoTxt.Text.Trim());
                this.medidorDAL.AgregarMedidor(medidor);
                Response.Redirect("MostrarMedidor.aspx");
            }


        }
    }
}