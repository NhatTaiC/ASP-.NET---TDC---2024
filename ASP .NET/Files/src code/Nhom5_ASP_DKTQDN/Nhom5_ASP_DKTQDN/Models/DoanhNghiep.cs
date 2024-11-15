using System;
using System.Collections.Generic;

namespace Nhom5_ASP_DKTQDN.Models
{
    public partial class DoanhNghiep
    {
        public DoanhNghiep()
        {
            ChuyenDis = new HashSet<ChuyenDi>();
        }

        public int Id { get; set; }
        public string? MaDoanhNghiep { get; set; }
        public string TenDoanhNghiep { get; set; } = null!;
        public string SoDienThoai { get; set; } = null!;
        public string DiaChi { get; set; } = null!;
        public int IsDeleted { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedAt { get; set; }
        public int UpdatedBy { get; set; }
        public DateTime UpdatedAt { get; set; }

        public virtual ICollection<ChuyenDi> ChuyenDis { get; set; }
    }
}
