using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace RISE_Demo.Models
{
    public class Question
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string QuestionText { get; set; }
    }
}
