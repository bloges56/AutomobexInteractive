using Microsoft.EntityFrameworkCore;
using RISE_Demo.Data;
using RISE_Demo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RISE_Demo.Repositories
{
    public class UserSurveyRepository : IUserSurveyRepository
    {
        private readonly ApplicationDbContext _context;

        public UserSurveyRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public UserSurvey GetById(int id)
        {
            return _context.UserSurvey.Where(us => us.Id == id).FirstOrDefault();
        }

        public double GetSurveyEngagement(int surveyId)
        {
            double total = _context.UserSurvey
                .Where(us => us.SurveyId == surveyId)
                .Count();

            double completed = _context.UserSurvey
                .Where(us => us.SurveyId == surveyId && us.IsCompleted == 1)
                .Count();

            return (completed / total);
        }

        public void Update(UserSurvey userSurvey)
        {
            UserSurvey original = GetById(userSurvey.Id);
            if (original == null)
            {
                return;
            }
            //detach from original userSurvey and update with new data
            _context.Entry(original).State = EntityState.Detached;
            _context.Entry(userSurvey).State = EntityState.Modified;
            _context.SaveChanges();

        }
    }
}
