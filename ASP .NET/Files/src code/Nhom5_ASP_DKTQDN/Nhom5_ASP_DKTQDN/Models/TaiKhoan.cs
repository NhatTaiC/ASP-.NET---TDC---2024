using System;
using System.Collections.Generic;

namespace Nhom5_ASP_DKTQDN.Models
{
    public partial class TaiKhoan
    {
        public TaiKhoan()
        {
            SinhViens = new HashSet<SinhVien>();
        }

        public int Id { get; set; }
        public string? TenTaiKhoan { get; set; }
        public string? MatKhau { get; set; }
        public int? Quyen { get; set; }
        public int? IsDeleted { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public int? UpdatedBy { get; set; }
        public DateTime? UpdatedAt { get; set; }

        public virtual ICollection<SinhVien> SinhViens { get; set; }
    }
}
