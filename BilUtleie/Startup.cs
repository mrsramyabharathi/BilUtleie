using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BilUtleie.Startup))]
namespace BilUtleie
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
