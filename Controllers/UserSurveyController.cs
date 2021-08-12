using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using RISE_Demo.Models;
using RISE_Demo.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RISE_Demo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserSurveyController : ControllerBase
    {
        private readonly IUserSurveyRepository _userSurveyRepository;
        public UserSurveyController(IUserSurveyRepository userSurveyRepository)
        {
            _userSurveyRepository = userSurveyRepository;
        }

        [HttpGet("engagement/{id}")]
        public IActionResult Get(int id)
        {
            return Ok(_userSurveyRepository.GetSurveyEngagement(id));
        }

        [HttpPut("update")]
        public IActionResult Update(UserSurvey userSurvey)
        {
            _userSurveyRepository.Update(userSurvey);
            return NoContent();
        }
    }
}
