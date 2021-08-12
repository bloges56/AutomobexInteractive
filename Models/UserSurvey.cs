using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace RISE_Demo.Models
{
    public class UserSurvey
    {
        public int Id { get; set; }

        [Required]
        public int UserId { get; set; }
        public User User { get; set; }

        [Required]
        public int SurveyId { get; set; }
        public Survey Survey { get; set; }

        [Required]
        public int IsCompleted { get; set; }
    }
}
