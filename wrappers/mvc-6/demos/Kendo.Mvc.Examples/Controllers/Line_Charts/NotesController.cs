﻿using Kendo.Mvc.Examples.Models;
using Microsoft.AspNet.Mvc;

namespace Kendo.Mvc.Examples.Controllers
{
    public partial class Line_ChartsController : Controller
    {
        public IActionResult Notes()
        {
            return View(ChartDataRepository.GrandSlam());
        }
    }
}