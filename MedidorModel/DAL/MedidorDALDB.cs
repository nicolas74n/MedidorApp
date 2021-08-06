using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public class MedidorDALDB : IMedidorDAL
    {
        private Medidor_DBEntities eventosDB = new Medidor_DBEntities();

        public void AgregarMedidor(Medidor medidor)
        {
            this.eventosDB.Medidors.Add(medidor);
            this.eventosDB.SaveChanges();
        }

        public void EliminarMedidor(int id)
        {
            Medidor medidor = this.eventosDB.Medidors.Find(id);
            this.eventosDB.Medidors.Remove(medidor);
            this.eventosDB.SaveChanges();
        }

        public List<Medidor> obtenerMedidores()
        {
            return this.eventosDB.Medidors.ToList();
        }
    }
}
