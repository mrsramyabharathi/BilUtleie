using BilUtleie.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BilUtleie.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index( )
        {
            MyDbContext db = new MyDbContext();

            // linq query - such that
            //LeieforholdModels lf = db.Leieforhold.Single(l => l.LeieforholdId == 1);
            //List<LeietakerModels> lt = db.Leietaker.ToList();
            //List<BilModels> bil = db.Bil.ToList();
          //  List<LeieforholdModels> lf = db.Leieforhold.ToList();
          //  List<LeietakerModels> lt = db.Leietaker.ToList();
          //  List<BilModels> bm = db.Bil.ToList();
          //  var vmlist = from a in lf
          //                      join b in db.Leietaker on a.LeietakerId equals b.LeietakerId
          //                      join c in db.Bil on a.BilId equals c.BilId
          //                      select new { a, b, c };


            List<LeieforholdModels> lflist = db.Leieforhold.ToList();
            UtleieViewModels VM = new UtleieViewModels();
            List<UtleieViewModels> vmlist = lflist.Select(x => new UtleieViewModels
            { LeieforholdId = x.LeieforholdId,
              LeietakerFornavn = x.LeietakerDetalj.Fornavn,
              LeietakerEtternavn = x.LeietakerDetalj.Etternavn,
              BilMerke = x.BilDetalj.BilMerke,
              BilModell = x.BilDetalj.BilModell,
              Pris = x.Pris}).ToList();
              return View(vmlist);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}