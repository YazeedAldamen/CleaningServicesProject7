using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CleaningServices1.Startup))]
namespace CleaningServices1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
