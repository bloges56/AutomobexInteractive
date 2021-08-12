using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace RISE_Demo.Models
{
    public class Survey
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string Title { get; set; }

        [Required]
        [DataType(DataType.EmailAddress)]
        public DateTime EndDate { get; set; }

        public bool IsOpen { get; set; }
    }
}
