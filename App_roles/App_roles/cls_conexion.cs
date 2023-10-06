using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace App_Reto1
{
    public class cls_conexion
    {
        public SqlConnection connection = new SqlConnection("Data Source=DESKTOP-AEE6ANE\\SQLEXPRESS;Initial Catalog=dbs_simuladorcredito;Integrated Security=True");
    }
}