using SQLi_Demo.Data;

namespace SQLi_Demo.Services
{
    public interface IProductService
    {
        Product GetProduct(long id);
    }
}
