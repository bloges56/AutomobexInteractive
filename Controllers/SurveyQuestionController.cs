using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using RISE_Demo.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RISE_Demo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SurveyQuestionController : ControllerBase
    {
        private readonly ISurveyQuestionRepository _surveyQuestionRepository;
        public SurveyQuestionController(ISurveyQuestionRepository surveyQuestionRepository)
        {
            _surveyQuestionRepository = surveyQuestionRepository;
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            return Ok(_surveyQuestionRepository.GetQuestionsById(id));
        }
    }
}
