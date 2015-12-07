using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FITlosophiBLL;
using FITlosophiData.Models;
using NUnit.Framework;



namespace FITlosophi.Test
{
    [TestFixture]
   public  class FITlosophiOPTest
    {

        private FITlosophiOperations ops { get; set; }

        [SetUp]
        public void SetUp()
        {
            ops = new FITlosophiOperations();
        }

//Read

        [Test]
        public void GetAllCategories()
        {
            List<Category> categories = ops.GetAllCategories();

            Assert.AreEqual(1, categories.FirstOrDefault(m => m.CategoryID == 1).CategoryID);
        }


        

    }

  
}


