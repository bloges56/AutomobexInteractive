using RISE_Demo.Models;
using System.Collections.Generic;

namespace RISE_Demo.Repositories
{
    public interface IUserRepository
    {
        List<User> GetAll();
        User GetById(int id);
    }
}