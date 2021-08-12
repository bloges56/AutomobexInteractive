using RISE_Demo.Data;
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

        public double GetSurveyEngagement(int surveyId)
        {
            double total = _context.UserSurvey
                .Where(us => us.SurveyId == surveyId)
                .Count();

            double completed = _context.UserSurvey
                .Where(us => us.SurveyId == surveyId && us.IsCompleted == 1)
                .Count();

            return (completed / total) * 100;
        }
    }
}
