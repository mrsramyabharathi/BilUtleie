using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BilUtleie.Models
{
    [Table("Leietaker")]
    public class LeietakerModels
    {
        [Key]
        public int LeietakerId { get; set; }
        public string Fornavn { get; set; }
        public string Etternavn { get; set; }
        public string Adresse1 { get; set; }
        public string Adresse2 { get; set; }
        public string Mobil { get; set; }
        public string Epost { get; set; }
        public int Age { get; set; }
    }
}