using InterviewApplication.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace InterviewApplication.Controllers
{
    public class RegistrationController : Controller
    {
        private readonly DataContext _context;

        public RegistrationController(DataContext context)
        {
            _context = context;
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login(LoginTable loginTable)
        {
            var auth1 = _context.logintbl.Find(1);
            var auth2 = _context.logintbl.Find(2);
            if (auth1.user == loginTable.user && auth1.password == loginTable.password)
            {
                return RedirectToAction("StudentList");
            }
            else if (auth2.user == loginTable.user && auth2.password == loginTable.password)
            {
                return RedirectToAction("StudentList");
            }
            else
            {
                //return RedirectToAction("Registration");
                ViewData["loginstatus"] = "Login Failed";
            }
            return View();
        }

        // View the student list
        public IActionResult StudentList()
        {
            return View(_context.registrationtbl);
        }

        // Go to the registration form
        public IActionResult Registration()
        {
            return View();
        }

        // Registration information submitted to database
        [HttpPost]
        public IActionResult Registration(RegistrationTable registrationTable)
        {
            _context.registrationtbl.Add(registrationTable);
            _context.SaveChanges();
            return RedirectToAction("StudentList");
        }

        public IActionResult DeleteData(int id)
        {
            var v = _context.registrationtbl.Find(id);
            _context.registrationtbl.Remove(v);
            _context.SaveChanges();
            return RedirectToAction("StudentList");
        }

        public IActionResult UpdateData(int id)
        {
            var regtbl = _context.registrationtbl.Find(id);
            return View(regtbl);
        }

        [HttpPost]
        public IActionResult UpdateData(RegistrationTable registration)
        {
            _context.registrationtbl.Update(registration);
            _context.SaveChanges();
            return RedirectToAction("StudentList");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
