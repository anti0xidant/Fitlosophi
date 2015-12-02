using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FITernitiMVC.Startup))]
namespace FITernitiMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
