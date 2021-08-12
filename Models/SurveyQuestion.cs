using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace RISE_Demo.Models
{
    public class SurveyQuestion
    {
        public int Id { get; set; }

        [Required]
        public int SurveyId { get; set; }
        public Survey Survey { get; set; }

        [Required]
        public int QuestionId { get; set; }
        public Question Question { get; set; }
    }
}
