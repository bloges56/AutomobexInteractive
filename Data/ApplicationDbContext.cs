using RISE_Demo.Models;
using Microsoft.EntityFrameworkCore;

namespace RISE_Demo.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }

        public DbSet<User> User { get; set; }
    }
}
