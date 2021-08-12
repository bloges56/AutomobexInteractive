using Microsoft.EntityFrameworkCore;
using RISE_Demo.Data;
using RISE_Demo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RISE_Demo.Repositories
{
    public class SurveyQuestionRepository : ISurveyQuestionRepository
    {
        private readonly ApplicationDbContext _context;

        public SurveyQuestionRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<Question> GetQuestionsById(int surveyId)
        {
            return _context.SurveyQuestion
                .Include(sq => sq.Question)
                .Where(sq => sq.SurveyId == surveyId)
                .Select(sq => sq.Question)
                .ToList();
        }
    }
}
