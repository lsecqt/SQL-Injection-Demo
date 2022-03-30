using Microsoft.EntityFrameworkCore;
using SQLi_Demo.Data;

namespace SQLi_Demo.Services
{
    public class ProductService : IProductService
    {
        private readonly sqlidbContext _context;

        public ProductService(sqlidbContext context)
        {
            _context = context;
        }

        public Product GetProduct(long id)
        {
            var product = _context.Products.Where(x => x.Id == id).FirstOrDefault();
            return product;
        }
    }
}
