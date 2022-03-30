using System;
using System.Collections.Generic;

namespace SQLi_Demo.Data
{
    public partial class Product
    {
        public long Id { get; set; }
        public string Name { get; set; } = null!;
        public double Cost { get; set; }
        public long? UserId { get; set; }
    }
}
