using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MySQL.Data.EntityFrameworkCore;
using InterviewApplication.Models;

namespace InterviewApplication.Models
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options)
            : base(options)
        {
        }
        public DbSet<RegistrationTable> registrationtbl { get; set; }
        public DbSet<ClassTable> classtbl { get; set; }
        public DbSet<LoginTable> logintbl { get; set; }
    }
}
