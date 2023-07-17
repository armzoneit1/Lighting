﻿using Lighting.Areas.Identity.Data;
using Lighting.Models.InputFilterModels.Product;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis.CSharp;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace Lighting.Controllers.Backend
{
    public class ManageProductController : Controller
    {

        private readonly LightingContext _db;
        private readonly IWebHostEnvironment _env;
        public ManageProductController(LightingContext db, IWebHostEnvironment env)
        {
            _db = db;
            _env = env;
        }

        public async Task<ActionResult> Add_Product_Page()
        {
            ViewData["category"] = await _db.Product_Categorys.ToListAsync();
            ViewData["model"] = await _db.Product_Models.ToListAsync();
            return View();
        }

        public  ActionResult Edit_Category_Page()
        {

            return View();
        }

        public ActionResult Edit_Model_page()
        {
            return View();
        }

        public async Task<ActionResult> Edit_Product_Page()
        {
            ViewData["category"] = await _db.Product_Categorys.ToListAsync();
            ViewData["model"] = await _db.Product_Models.ToListAsync();
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Edit_CategoryById([FromForm] Input_ProductCategoryVM input, [FromQuery] int id)
        {
            var category = await _db.Product_Categorys.FirstOrDefaultAsync(cat => cat.Id == id);
            if (category != null)
            {
                category.Name_TH = input.Name_TH;
                category.Name_EN = input.Name_EN;

                await _db.SaveChangesAsync();
                return Json(new { status = "success", message = "บันทึกข้อมูลเรียบร้อย" });
            }
            return Json(new { status = "faile", message = "ไม่พบข้อมูล" });
        }

        [HttpPost]
        public async Task<IActionResult> Delete_CategoryById(int id)
        {
            var category = await _db.Product_Categorys.FirstOrDefaultAsync(cat => cat.Id == id);
            if (category != null)
            {
                _db.Product_Categorys.Remove(category);
                await _db.SaveChangesAsync();
                return Json(new { status = "success", message = "บันทึกข้อมูลเรียบร้อย" });
            }
            return Json(new { status = "faile", message = "ไม่พบข้อมูล" });
        }

        [HttpPost]
        public async Task<IActionResult> Add_Category([FromForm] Input_ProductCategoryVM input)
        {
            if (ModelState.IsValid)
            {
                await _db
                    .Product_Categorys
                    .AddAsync(
                    new Product_Category
                    {
                        Name_EN = input.Name_EN,
                        Name_TH = input.Name_TH,
                    });
                await _db.SaveChangesAsync();
                return Json(new { status = "success", message = "บันทึกข้อมูลเรียบร้อย" });
            }
            return Json(new { status = "fail", message = "กรุณกรอกข้อมูลให้ครับ" });
        }

        public async Task<ActionResult> Manage_Category_Page()
        {
            var category = await _db.Product_Categorys
                .OrderByDescending(cat => cat.Id)
                .Select(cat =>
                new Output_ProductCategoryVM
                {
                    Id = cat.Id,
                    Name_EN = cat.Name_EN,
                    Name_TH = cat.Name_TH,
                }).ToListAsync();
            return View(category);
        }

        [HttpPost]
        public async Task<IActionResult> Edit_ModelById([FromForm] Input_ProductModelVM input, [FromQuery] int id)
        {
            var model = await _db.Product_Models.FirstOrDefaultAsync(cat => cat.Id == id);
            if (model != null)
            {
                try
                {
                    var new_file_img = Guid.NewGuid().ToString() + ".jpg";
                    if (input.Image != null)
                    {
                        var old_img_path = Path.Combine(_env.WebRootPath, "upload_image", "Product_Model", model.Image);
                        if (System.IO.File.Exists(old_img_path))
                        {
                            System.IO.File.Delete(old_img_path);
                        }
                        var new_img_path = Path.Combine(_env.WebRootPath, "upload_image", "Product_Model", new_file_img);
                        using (var stream = new FileStream(new_img_path, FileMode.CreateNew))
                        {
                            await input.Image.CopyToAsync(stream);
                        }
                        model.Image = new_file_img;
                    }

                    model.Name_TH = input.Name_TH;
                    model.Name_EN = input.Name_EN;
                    model.Product_CategoryId = input.Product_CategoryId;

                    await _db.SaveChangesAsync();
                    return Json(new { status = "success", message = "บันทึกข้อมูลเรียบร้อย" });
                }
                catch (Exception ex)
                {
                    return Json(new { status = "faile", message = "ไม่พบข้อมูล :" + ex.Message });
                }
            }
            return Json(new { status = "faile", message = "ไม่พบข้อมูล" });
        }

        [HttpPost]
        public async Task<IActionResult> Delete_ModelById(int id)
        {
            var model = await _db.Product_Models.FirstOrDefaultAsync(cat => cat.Id == id);
            if (model != null)
            {
                try
                {
                    var path_file = Path.Combine(_env.WebRootPath, "upload_image", "Product_Model", model.Image);
                    if (System.IO.File.Exists(path_file))
                    {
                        System.IO.File.Delete(path_file);
                    }
                    _db.Product_Models.Remove(model);
                    await _db.SaveChangesAsync();
                    return Json(new { status = "success", message = "บันทึกข้อมูลเรียบร้อย" });
                }
                catch (Exception ex)
                {
                    return Json(new { status = "faile", message = "เกิดข้อผิดพลาด " + ex.Message });
                }
            }
            return Json(new { status = "faile", message = "ไม่พบข้อมูล" });
        }

        [HttpPost]
        public async Task<IActionResult> Add_Model([FromForm] Input_ProductModelVM input)
        {
            if (ModelState.IsValid)
            {
                var img_name = Guid.NewGuid().ToString() + ".jpg";
                var path = Path.Combine("upload_image", "Product_Model", img_name);

                try
                {

                    if (input.Image != null)
                    {
                        using (var stream = new FileStream(Path.Combine(_env.WebRootPath, path), FileMode.CreateNew))
                        {
                            await input.Image.CopyToAsync(stream);
                        }
                    }
                    await _db
                        .Product_Models
                        .AddAsync(
                        new Product_Model
                        {
                            Name_EN = input.Name_EN,
                            Name_TH = input.Name_TH,
                            Image = img_name,
                            Product_CategoryId = input.Product_CategoryId,
                        });
                    await _db.SaveChangesAsync();
                    return Json(new { status = "success", message = "บันทึกข้อมูลเรียบร้อย" });
                }
                catch (Exception ex)
                {
                    var error_file_path = Path.Combine(_env.WebRootPath, path, img_name);
                    if (System.IO.File.Exists(error_file_path))
                    {
                        System.IO.File.Delete(error_file_path);
                    }
                    return Json(new { status = "fail", message = "เกิดข้อผิดพลาด" });
                }
            }
            return Json(new { status = "fail", message = "กรุณากรอกข้อมูลให้ครับ" });
        }
        public async Task<IActionResult> Manage_Model_Page()
        {
            var model = await _db.Product_Models
                .AsNoTracking()
                .OrderByDescending(model => model.Id)
                .Select(model => new Output_ProductModelVM
                {
                    Id = model.Id,
                    Name_EN = model.Name_EN,
                    Name_TH = model.Name_TH,
                    Product_CategoryId = model.Product_CategoryId,
                    Image = Path.Combine("upload_image", "Product_Model", model.Image)
                })
                .ToListAsync();
            ViewData["category"] = await _db.Product_Categorys.ToListAsync();

            return View(model);
        }

        [HttpPost]
        public async Task<IActionResult> Add_Product([FromForm] Input_ProductVM input)
        {
            if (ModelState.IsValid)
            {
                var folder_name = Guid.NewGuid().ToString();
                var path = Path.Combine("upload_image", "Product", folder_name);
                var directory = Path.Combine(_env.WebRootPath, path);
                Directory.CreateDirectory(directory);

                var product = new Product();


                try
                {
                    var preview_img = Path.Combine(directory, input.Preview_Image.FileName);
                    using (var stream = new FileStream(preview_img, FileMode.CreateNew))
                    {
                        await input.Preview_Image.CopyToAsync(stream);
                    }

                    if (input.CUTSHEET != null)
                    {
                        var cut_sheet = Path.Combine(_env.WebRootPath, path, input.CUTSHEET.FileName);
                        using (var stream = new FileStream(cut_sheet, FileMode.CreateNew))
                        {
                            await input.CUTSHEET.CopyToAsync(stream);
                        }
                    }

                    if (input.IESFILE != null)
                    {
                        var ies_file = Path.Combine(_env.WebRootPath, path, input.IESFILE.FileName);
                        using (var stream = new FileStream(ies_file, FileMode.CreateNew))
                        {
                            await input.IESFILE.CopyToAsync(stream);
                        }
                    }

                    if (input.CATALOGUE != null)
                    {
                        var catalogue = Path.Combine(_env.WebRootPath, path, input.CATALOGUE.FileName);
                        using (var stream = new FileStream(catalogue, FileMode.CreateNew))
                        {
                            await input.CATALOGUE.CopyToAsync(stream);
                        }
                    }

                    if (input.Technical_Drawing_Img != null)
                    {
                        var folder = Path.Combine(_env.WebRootPath, path, "technical_img");
                        Directory.CreateDirectory(folder);
                        foreach (var tect_img in input.Technical_Drawing_Img)
                        {
                            var more_infor = Path.Combine(_env.WebRootPath, path, "technical_img", tect_img.FileName);
                            using (var stream = new FileStream(more_infor, FileMode.CreateNew))
                            {
                                await tect_img.CopyToAsync(stream);
                            }
                        }
                    }

                    if (input.LIGHT_DISTRIBUTION != null)
                    {
                        var folder = Path.Combine(_env.WebRootPath, path, "light_ditribute_img");
                        Directory.CreateDirectory(folder);
                        foreach (var light_ditribute in input.LIGHT_DISTRIBUTION)
                        {
                            var more_infor = Path.Combine(_env.WebRootPath, path, "light_ditribute_img", light_ditribute.FileName);
                            using (var stream = new FileStream(more_infor, FileMode.CreateNew))
                            {
                                await light_ditribute.CopyToAsync(stream);
                            }
                        }
                    }

                    product.Folder_Path = folder_name;
                    //file
                    product.Preview_Image = input.Preview_Image.FileName;
                    product.CUTSHEET = input.CUTSHEET.FileName;
                    product.CATALOGUE = input.CATALOGUE.FileName;
                    product.IESFILE = input.IESFILE.FileName;
                    product.MORE_INFORMATION = input.MORE_INFORMATION;

                    product.Product_CategoryId = input.Product_CategoryId;
                    product.Product_ModelId = input.Product_ModelId;
                    product.Model = input.Model;
                    product.Type_EN = input.Type_EN;
                    product.Type_TH = input.Type_TH;
                    product.Application = input.Application;
                    //product.Technical_Drawing = input.Technical_Drawing;
                    product.Technical_Drawing_Img = Path.Combine(path, "technical_img");
                    product.LIGHT_DISTRIBUTION = Path.Combine(path, "light_ditribute_img");
                    //detail
                    product.Housing = input.Housing;
                    product.Finishing = input.Finishing;
                    product.Lens = input.Lens;
                    product.Gasket = input.Gasket;
                    product.Dimension = input.Dimension;
                    product.Mounting = input.Mounting;
                    product.Power = input.Power;
                    product.Source = input.Source;
                    product.Lamp_Colour = input.Lamp_Colour;
                    product.Luminaire_Output = input.Luminaire_Output;
                    product.Beam_Angle = input.Beam_Angle;
                    product.Control_Gear = input.Control_Gear;
                    product.Power_Supply = input.Power_Supply;
                    product.IP_Rating = input.IP_Rating;
                    product.Luminaire_Lifetime = input.Luminaire_Lifetime;
                    product.Equivalent = input.Equivalent;

                    await _db.Products.AddAsync(product);
                    await _db.SaveChangesAsync();
                    return Json(new { status = "success", message = "บันทึกข้อมูลเรียบร้อย" });
                }
                catch (Exception ex)
                {
                    Directory.Delete(directory, true);
                    return Json(new { status = "fail", message = "เกิดข้อผิดพลาด อาจมีชื่อไฟล์ซ้ำกัน" });
                }
            }
            return Json(new { status = "fail", message = "กรุณากรอกข้อมูลให้ครบ" });
        }

        [HttpPost]
        public async Task<IActionResult> Delete_ProductById(int id)
        {
            try
            {
                var product = await _db.Products.FirstOrDefaultAsync(pro => pro.Id == id);
                if (product != null)
                {
                    var path = Path.Combine(_env.WebRootPath, product.Folder_Path);
                    if (Directory.Exists(path))
                    {
                        Directory.Delete(path, true);
                    }
                    _db.Products.Remove(product);
                    await _db.SaveChangesAsync();
                    return Json(new { status = "success", message = "บันทึกข้อมูลเรียบร้อย" });
                }
                return Json(new { status = "fail", message = "ไม่พบข้อมูล" });
            }
            catch (Exception ex)
            {
                return Json(new { status = "fail", message = "เกิดข้อผิดพลาด" });
            }
        }

        [HttpPost]
        public async Task<IActionResult> Edit_Product([FromForm] Input_ProductVM input, [FromQuery] int id)
        {

            var product = await _db.Products.FirstOrDefaultAsync(pro => pro.Id == id);
            if (product != null)
            {

                var path = Path.Combine("upload_image", "Product", product.Folder_Path);
                var directory = Path.Combine(_env.WebRootPath, path);
                try
                {
                    var preview_img = Path.Combine(directory, input.Preview_Image.FileName);
                    if (input.Preview_Image != null)
                    {
                        if (product.Preview_Image != null)
                        {
                            var delete_file = Path.Combine(preview_img, product.Preview_Image);
                            if (System.IO.File.Exists(delete_file))
                            {
                                System.IO.File.Delete(delete_file);
                            }
                        }

                        using (var stream = new FileStream(preview_img, FileMode.CreateNew))
                        {
                            await input.Preview_Image.CopyToAsync(stream);
                        }
                    }

                    if (input.CUTSHEET != null)
                    {
                        if (product.CUTSHEET != null)
                        {
                            var delete_file = Path.Combine(preview_img, product.CUTSHEET);
                            if (System.IO.File.Exists(delete_file))
                            {
                                System.IO.File.Delete(delete_file);
                            }
                        }

                        var cut_sheet = Path.Combine(_env.WebRootPath, path, input.CUTSHEET.FileName);
                        using (var stream = new FileStream(cut_sheet, FileMode.CreateNew))
                        {
                            await input.CUTSHEET.CopyToAsync(stream);
                        }
                    }

                    if (input.IESFILE != null)
                    {
                        if (product.IESFILE != null)
                        {
                            var delete_file = Path.Combine(preview_img, product.IESFILE);
                            if (System.IO.File.Exists(delete_file))
                            {
                                System.IO.File.Delete(delete_file);
                            }
                        }
                        var ies_file = Path.Combine(_env.WebRootPath, path, input.IESFILE.FileName);
                        using (var stream = new FileStream(ies_file, FileMode.CreateNew))
                        {
                            await input.IESFILE.CopyToAsync(stream);
                        }
                    }

                    if (input.CATALOGUE != null)
                    {
                        if (product.CATALOGUE != null)
                        {
                            var delete_file = Path.Combine(preview_img, product.CATALOGUE);
                            if (System.IO.File.Exists(delete_file))
                            {
                                System.IO.File.Delete(delete_file);
                            }
                        }
                        var catalogue = Path.Combine(_env.WebRootPath, path, input.CATALOGUE.FileName);
                        using (var stream = new FileStream(catalogue, FileMode.CreateNew))
                        {
                            await input.CATALOGUE.CopyToAsync(stream);
                        }
                    }


                    if (input.Technical_Drawing_Img != null)
                    {
                        var folder = Path.Combine(_env.WebRootPath, path, "technical_img");
                        Directory.Delete(folder, true);
                        Directory.CreateDirectory(folder);
                        foreach (var tect_img in input.Technical_Drawing_Img)
                        {
                            var more_infor = Path.Combine(_env.WebRootPath, path, "technical_img", tect_img.FileName);
                            using (var stream = new FileStream(more_infor, FileMode.CreateNew))
                            {
                                await tect_img.CopyToAsync(stream);
                            }
                        }
                    }

                    if (input.LIGHT_DISTRIBUTION != null)
                    {
                        var folder = Path.Combine(_env.WebRootPath, path, "light_ditribute_img");
                        Directory.Delete(folder, true);
                        Directory.CreateDirectory(folder);
                        foreach (var light_ditribute in input.LIGHT_DISTRIBUTION)
                        {
                            var more_infor = Path.Combine(_env.WebRootPath, path, "light_ditribute_img", light_ditribute.FileName);
                            using (var stream = new FileStream(more_infor, FileMode.CreateNew))
                            {
                                await light_ditribute.CopyToAsync(stream);
                            }
                        }
                    }

                    //product.Folder_Path = folder_name;
                    //file
                    product.Preview_Image = input.Preview_Image.FileName;
                    product.CUTSHEET = input.CUTSHEET.FileName;
                    product.CATALOGUE = input.CATALOGUE.FileName;
                    product.IESFILE = input.IESFILE.FileName;
                    product.MORE_INFORMATION = input.MORE_INFORMATION;

                    product.Product_CategoryId = input.Product_CategoryId;
                    product.Product_ModelId = input.Product_ModelId;
                    product.Model = input.Model;
                    product.Type_EN = input.Type_EN;
                    product.Type_TH = input.Type_TH;
                    product.Application = input.Application;

                    product.Technical_Drawing_Img = Path.Combine(path, "technical_img");
                    product.LIGHT_DISTRIBUTION = Path.Combine(path, "light_ditribute_img");
                    //detail
                    product.Housing = input.Housing;
                    product.Finishing = input.Finishing;
                    product.Lens = input.Lens;
                    product.Gasket = input.Gasket;
                    product.Dimension = input.Dimension;
                    product.Mounting = input.Mounting;
                    product.Power = input.Power;
                    product.Source = input.Source;
                    product.Lamp_Colour = input.Lamp_Colour;
                    product.Luminaire_Output = input.Luminaire_Output;
                    product.Beam_Angle = input.Beam_Angle;
                    product.Control_Gear = input.Control_Gear;
                    product.Power_Supply = input.Power_Supply;
                    product.IP_Rating = input.IP_Rating;
                    product.Luminaire_Lifetime = input.Luminaire_Lifetime;
                    product.Equivalent = input.Equivalent;

                    await _db.SaveChangesAsync();
                    return Json(new { status = "success", message = "บันทึกข้อมูลเรียบร้อย" });
                }
                catch (Exception ex)
                {
                    Directory.Delete(directory, true);
                    return Json(new { status = "fail", message = "เกิดข้อผิดพลาด อาจมีชื่อไฟล์ซ้ำกัน" });
                }
            }
            return Json(new { status = "fail", message = "ไท่พบข้อมูล" });
        }
        public async Task<ActionResult> Manage_Product_Page()
        {
            var product = await _db.Products
                .OrderByDescending(cat => cat.Id)
                .Select(pro =>
                new Output_ProductVM
                {
                    Id = pro.Id,
                    Product_CategoryId = pro.Product_CategoryId,
                    Product_ModelId = pro.Product_ModelId,
                    Application = pro.Application,
                    Beam_Angle = pro.Beam_Angle,
                    Type_EN = pro.Type_EN,
                    Type_TH = pro.Type_TH,

                    Control_Gear = pro.Control_Gear,
                    Dimension = pro.Dimension,
                    Equivalent = pro.Equivalent,
                    Finishing = pro.Finishing,
                    Gasket = pro.Gasket,
                    Housing = pro.Housing,
                    
                    IP_Rating = pro.IP_Rating,
                    Lamp_Colour = pro.Lamp_Colour,
                    Lens = pro.Lens,
                    Luminaire_Lifetime = pro.Luminaire_Lifetime,
                    Model = pro.Model,
                    Mounting = pro.Mounting,
                    MORE_INFORMATION = pro.MORE_INFORMATION,
                    Power = pro.Power,
                    Power_Supply = pro.Power_Supply,
                    Source = pro.Source,
                    Luminaire_Output = pro.Luminaire_Output,
                   
                    Folder_Path = pro.Folder_Path,
                    CUTSHEET = pro.CUTSHEET == null ? null:Path.Combine("upload_image", "Product", pro.Folder_Path, pro.CUTSHEET),
                    CATALOGUE = pro.CATALOGUE == null ? null:Path.Combine("upload_image", "Product",pro.Folder_Path, pro.CATALOGUE),
                    IESFILE = pro.IESFILE == null ? null:Path.Combine("upload_image", "Product",pro.Folder_Path, pro.IESFILE),
                    Preview_Imamge = pro.Preview_Image == null ? null:Path.Combine("upload_image", "Product",pro.Folder_Path, pro.Preview_Image),

                })
                .ToListAsync();

            product.ForEach(productItem =>
            {
                productItem.Technical_Drawing_Img = GET_FILE(Path.Combine("upload_image", "Product", productItem.Folder_Path, "technical_img"));
                productItem.LIGHT_DISTRIBUTION = GET_FILE(Path.Combine("upload_image", "Product", productItem.Folder_Path, "light_ditribute_img"));
            });

            return View(product);
        }

        private List<string> GET_FILE(string path)
        {
            try
            {
                return Directory.GetFiles(Path.Combine(_env.WebRootPath, path))
                    .Select(path =>
                    {
                        var arStr = path.Split("\\").Reverse().Take(5).Reverse();
                        return string.Join("/", arStr);
                    }).ToList();
            }catch (Exception ex)
            {
                return new();
            }
          
        }
    }
}
