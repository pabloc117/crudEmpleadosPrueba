using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using crudEmpleadosPrueba;

namespace crudEmpleadosPrueba.Controllers
{
    public class tblEmpleadoesController : Controller
    {
        private EmpresaEntities db = new EmpresaEntities();

        // GET: tblEmpleadoes
        public ActionResult Index()
        {
            return View(db.tblEmpleados.ToList());
        }

        // GET: tblEmpleadoes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblEmpleado tblEmpleado = db.tblEmpleados.Find(id);
            if (tblEmpleado == null)
            {
                return HttpNotFound();
            }
            return View(tblEmpleado);
        }

        // GET: tblEmpleadoes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: tblEmpleadoes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Nombres,Apellido")] tblEmpleado tblEmpleado)
        {
            if (ModelState.IsValid)
            {
                db.tblEmpleados.Add(tblEmpleado);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tblEmpleado);
        }

        // GET: tblEmpleadoes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblEmpleado tblEmpleado = db.tblEmpleados.Find(id);
            if (tblEmpleado == null)
            {
                return HttpNotFound();
            }
            return View(tblEmpleado);
        }

        // POST: tblEmpleadoes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Nombres,Apellido")] tblEmpleado tblEmpleado)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblEmpleado).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tblEmpleado);
        }

        // GET: tblEmpleadoes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblEmpleado tblEmpleado = db.tblEmpleados.Find(id);
            if (tblEmpleado == null)
            {
                return HttpNotFound();
            }
            return View(tblEmpleado);
        }

        // POST: tblEmpleadoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tblEmpleado tblEmpleado = db.tblEmpleados.Find(id);
            db.tblEmpleados.Remove(tblEmpleado);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
