using MyProductList.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyProductList.ViewModels
{
    public class ProductsViewModel
    {
        public ICollection<Product> Products { get; set; }

        public Product Product { get; set; }

        [Display(Name = "Description (Eng)")]
        public string Description_Eng { get; set; }
    }
}