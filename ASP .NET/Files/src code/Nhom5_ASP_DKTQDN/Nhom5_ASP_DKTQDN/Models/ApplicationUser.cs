using Microsoft.AspNetCore.Identity;

namespace Nhom5_ASP_DKTQDN.Models
{
    public class ApplicationUser: IdentityUser
    {
        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";
    }
}
