using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BilUtleie.Models
{
    [Table("Leieforhold")]
    public class LeieforholdModels
    {
        [Key]
        public int LeieforholdId { get; set; }
        public int LeietakerId { get; set; }
        public int BilId { get; set; }
        public DateTime LeieforholdFra { get; set; }
        public DateTime LeieforholdTil { get; set; }
        public decimal Pris { get; set; }
        public virtual LeietakerModels LeietakerDetalj { get; set; }
        public virtual BilModels BilDetalj { get; set; }
    }
}