using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OutlayCost3.Startup))]
namespace OutlayCost3
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
