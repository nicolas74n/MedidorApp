﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public interface IMedidorDAL
    {
        List<Medidor> obtenerMedidores();
        void AgregarMedidor(Medidor medidor);
        void EliminarMedidor(int id);
    }
}
