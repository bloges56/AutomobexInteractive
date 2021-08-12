using RISE_Demo.Models;

namespace RISE_Demo.Repositories
{
    public interface IUserSurveyRepository
    {
        double GetSurveyEngagement(int surveyId);
        UserSurvey GetById(int id);
        void Update(UserSurvey userSurvey);
    }
}