using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public class UsuarioDALDB : IUsuarioDAL
    {
        private Medidor_DBEntities eventosDB = new Medidor_DBEntities();
        public void AgregarUsuario(Usuario usuario)
        {
            this.eventosDB.Usuarios.Add(usuario);
            this.eventosDB.SaveChanges();
        }

        public void EliminarUsuario(int id)
        {
            Usuario usuario = this.eventosDB.Usuarios.Find(id);
            this.eventosDB.Usuarios.Remove(usuario);
            this.eventosDB.SaveChanges();
        }

        public Usuario obtenerUsuario(string rut)
        {
            return this.eventosDB.Usuarios.Find(rut);
        }

        public List<Usuario> ObtenerUsuarios()
        {
            return this.eventosDB.Usuarios.ToList();
        }

        public List<Usuario> ObtenerUsuarios(string estado)
        {
            //LINQ
            var query = from a in this.eventosDB.Usuarios
                        where a.Estado == estado
                        select a;
            return query.ToList();
        }
    }
}
