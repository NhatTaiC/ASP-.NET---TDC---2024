using System;
using System.Collections.Generic;

namespace Nhom5_ASP_DKTQDN.Models
{
    public partial class ChiTietDangKy
    {
        public int Id { get; set; }
        public DateTime? NgayDangKy { get; set; }
        public int IdSinhVien { get; set; }
        public int IdChuyenDi { get; set; }
        public int? IsDeleted { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public int? UpdatedBy { get; set; }
        public DateTime? UpdatedAt { get; set; }

        public virtual ChuyenDi IdChuyenDiNavigation { get; set; } = null!;
        public virtual SinhVien IdSinhVienNavigation { get; set; } = null!;
    }
}
