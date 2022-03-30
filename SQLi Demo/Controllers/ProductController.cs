using Microsoft.AspNetCore.Mvc;
using SQLi_Demo.Services;

namespace SQLi_Demo.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductController : Controller
    {
        private readonly IProductService _productService;

        public ProductController(IProductService productService)
        {
            _productService = productService; 
        }

        [HttpGet("{id}")]
        public IActionResult GetProduct(long id)
        {
            return Ok(_productService.GetProduct(id));
        }
    }
}
