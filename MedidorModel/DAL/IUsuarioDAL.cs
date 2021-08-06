using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public interface IUsuarioDAL
    {
        List<Usuario> ObtenerUsuarios();
        List<Usuario> ObtenerUsuarios(string estado);
        Usuario obtenerUsuario(string rut);
        void AgregarUsuario(Usuario usuario);
        void EliminarUsuario(int id);
    }
}
