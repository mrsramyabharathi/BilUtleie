using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BilUtleie.Models
{
    public class MyDbContext : DbContext
    {
        public DbSet<BilModels> Bil { get; set; }

        public DbSet<LeietakerModels> Leietaker { get; set; }

        public DbSet<LeieforholdModels> Leieforhold { get; set; }
    }
}