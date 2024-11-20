using System;
using System.Collections.Generic;

namespace Nhom5_ASP_DKTQDN.Models
{
    public partial class SinhVien
    {
        public SinhVien()
        {
            ChiTietDangKies = new HashSet<ChiTietDangKy>();
        }

        public int Id { get; set; }
        public string? MaSinhVien { get; set; }
        public string? TenSinhVien { get; set; }
        public string? SoDienThoai { get; set; }
        public string? Email { get; set; }
        public int? IdKhoa { get; set; }
        public int IdTaiKhoan { get; set; }
        public int IdKhoaHoc { get; set; }
        public int IsDeleted { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public int? UpdatedBy { get; set; }
        public DateTime? UpdatedAt { get; set; }

        public virtual KhoaHoc IdKhoaHocNavigation { get; set; } = null!;
        public virtual Khoa? IdKhoaNavigation { get; set; }
        public virtual TaiKhoan IdTaiKhoanNavigation { get; set; } = null!;
        public virtual ICollection<ChiTietDangKy> ChiTietDangKies { get; set; }
    }
}
