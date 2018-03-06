using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(gyakbogival.Startup))]
namespace gyakbogival
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
