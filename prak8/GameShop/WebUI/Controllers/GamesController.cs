using Domain.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebUI.Controllers
{
    public class GamesController : Controller
    {
        private IGameRepository repository;
        public GamesController(IGameRepository repo)
        {
            repository = repo;
        }

        public ViewResult List()
        {
            return View(repository.Games);
        }
    }
}