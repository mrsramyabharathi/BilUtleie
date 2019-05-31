using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BilUtleie.Models
{
    [Table("Bil")]
    public class BilModels
    {
        [Key]
        public int BilId { get; set; }
        public string BilMerke { get; set; }
        public string BilModell { get; set; }
        public string BilBilde { get; set; }
        public string Bilklasser { get; set; }
        public int AntallSeter { get; set; }
        public decimal PrisPåDøgnsLeie { get; set; }
        public decimal PrisPåUkesLeie { get; set; }
        public decimal PrisPåHelgeLeie { get; set; }
        public decimal PrisPåMånedsLeie { get; set; }
        public decimal PrisPåÅrsLeie { get; set; }
    }
}