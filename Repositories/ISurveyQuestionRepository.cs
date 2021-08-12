using RISE_Demo.Models;
using System.Collections.Generic;

namespace RISE_Demo.Repositories
{
    public interface ISurveyQuestionRepository
    {
        List<Question> GetQuestionsById(int surveyId);
    }
}