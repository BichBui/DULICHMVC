﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using DULICH.Data;
using DULICH.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace DULICH.Controllers
{
    public class TrangchuController : Controller
    {

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Gioithieu()
        {
            return View();
        }
        private readonly DULICHContext _context;

        public TrangchuController(DULICHContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> ListTours()
        {

            var model = from a in _context.Tours
                        join b in _context.Tour_loai
                             on a.loai_id equals b.loai_id
                        select new ListTours
                        {
                            tour_id = a.tour_id,
                            tour_ten = a.tour_ten,
                            tour_mota = a.tour_mota,
                            loai_ten = b.loai_ten,
                        };
            return View(model);
        }
        public async Task<IActionResult> ChitietTour(int? id)
        {


            var model = from c in _context.Tour_chitiet
                        join d in _context.Tour_diadiem
                             on c.dd_id equals d.dd_id
                        where c.tour_id == id
                        select new ChitietTour
                        {

                            diadiem_ten = d.dd_ten,
                            diadiem_mota = d.dd_mota,
                            diadiem_tt = c.ct_thutu
                        };
            return View(model);


        }
        public async Task<IActionResult> DoanhthuTour()
        {
            var model1 = from a in _context.Tours
                         join b in _context.Tour_doan
                         on a.tour_id equals b.tour_id
                         join c in _context.Tour_chiphi
                         on b.doan_id equals c.doan_id
                         join d in _context.Tour_gia
                         on b.gia_id equals d.gia_id
                         join e in _context.Tour_nguoidi
                         on b.doan_id equals e.doan_id
                         select new
                         {
                             a.tour_id,
                             a.tour_ten,
                             b.doan_id,
                             d.gia_id,
                             c.chiphi_id,
                             d.gia_sotien,
                             c.chiphi_total,
                             e.nguoidi_dskhach
                         };


            int sl = 20;
            var model = from a in model1
                        group a by new { a.tour_id, a.tour_ten } into g
                        select new DoanhthuTour()
                        {
                            tour_id = g.Key.tour_id,
                            tour_ten = g.Key.tour_ten,
                            tong_doan = g.Count(),
                            tong_doanhthu = g.Sum(i => i.gia_sotien) * sl,
                            tong_chiphi = g.Sum(i => i.chiphi_total),
                            lai = g.Sum(i => i.gia_sotien) * sl - g.Sum(i => i.chiphi_total)
                        };

            return View(model);


        }
        public async Task<IActionResult> ChiTietDoanhthuTour(int? id)
        {

            int sl = 20;
            var model = from a in _context.Tours
                        join b in _context.Tour_doan
                        on a.tour_id equals b.tour_id
                        join c in _context.Tour_chiphi
                        on b.doan_id equals c.doan_id
                        join d in _context.Tour_gia
                        on b.gia_id equals d.gia_id
                        join e in _context.Tour_nguoidi
                        on b.doan_id equals e.doan_id
                        where a.tour_id == id
                        select new ChitietDoanhthu()
                        {
                            doan_id = b.doan_id,
                            doan_ten = b.doan_name,
                            sokhach = sl,
                            giatour = d.gia_sotien,
                            doanhthu = d.gia_sotien * sl,
                            chiphi = c.chiphi_total,
                            lai = d.gia_sotien * sl - c.chiphi_total
                        };
            return View(model);
        }
        public async Task<IActionResult> NhapChiphi()
        {
            return View();
        }

        public async Task<IActionResult> DSDoanTour()
        {

            List<Tours> tours = _context.Tours.ToList();
            SelectList tourslist = new SelectList(tours, "tour_id", "tour_ten");
            ViewBag.tourslist = tourslist;
            List<Tour_doan> tour_doan = _context.Tour_doan.ToList();
            SelectList tour_doanlist = new SelectList(tour_doan, "doan_id", "doan_name");
            ViewBag.tour_doanlist = tour_doanlist;
            return View();
        }
        public JsonResult GetDoanList(int tour_id)
        {
            List<SelectListItem> list = new List<SelectListItem>();
            var tour_doan = _context.Tour_doan.Where(x => x.tour_id == tour_id);
            foreach (var item in tour_doan)
            {
                list.Add(new SelectListItem { Text = item.doan_name, Value = item.doan_id.ToString() });
            }

            return Json(list);

        }
        public JsonResult GetNhanvienList()
        {
            List<SelectListItem> list = new List<SelectListItem>();
            var nhanvien = _context.Tour_nhanvien;
            foreach (var item in nhanvien)
            {
                list.Add(new SelectListItem { Text = item.nv_ten, Value = item.nv_id.ToString()});
            }

            return Json(list);

        }
        
        public JsonResult GetKhachhangList()
        {
            List<SelectListItem> list = new List<SelectListItem>();
            var khachhang = _context.Tour_khachhang;
            foreach (var item in khachhang)
            {
                list.Add(new SelectListItem { Text = item.kh_ten, Value = item.kh_id.ToString() });
            }

            return Json(list);
        }
    }
}
