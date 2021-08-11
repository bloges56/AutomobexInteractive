using System.Linq;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using RISE_Demo.Data;
using RISE_Demo.Models;

namespace RISE_Demo.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly ApplicationDbContext _context;

        public UserRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<User> GetAll()
        {
            return _context.User.ToList();
        }

        public User GetById(int id)
        {
            return _context.User.FirstOrDefault(p => p.Id == id);
        }
    }
}
