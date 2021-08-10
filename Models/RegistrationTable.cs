using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace InterviewApplication.Models
{
    public class RegistrationTable
    {
        public int id { get; set; }
        public String name { get; set; }
        public String address { get; set; }
        public String dateofadmission { get; set; }
        [ForeignKey("classname")]
        public int classname { get; set; }
    }
}
