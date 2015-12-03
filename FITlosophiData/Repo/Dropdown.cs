using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace FITlosophiData.Repo
{
    public class DropDown
    {
        public List<SelectListItem> GetCategoryDropDownList()
        {
            var categoriesDropDownList = new List<SelectListItem>();

            var read = new Read();
            var categories = read.GetAllCategories();

            foreach (var cat in categories)
            {
                var e = new SelectListItem();

                e.Text = cat.CategoryName;
                e.Value = cat.CategoryID.ToString();

                categoriesDropDownList.Add(e);
            }

            return categoriesDropDownList;
        }
    }
}
