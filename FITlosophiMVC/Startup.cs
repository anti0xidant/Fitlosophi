using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FITlosophiMVC.Startup))]
namespace FITlosophiMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
