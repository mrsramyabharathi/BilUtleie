using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BilUtleie.Models
{
    public class UtleieViewModels
    {
        public int LeieforholdId { get; set; }
        public string LeietakerFornavn { get; set; }
        public string LeietakerEtternavn { get; set; }
        public string BilMerke { get; set; }
        public string BilModell { get; set; }
        public decimal Pris { get; set; }
    }
}