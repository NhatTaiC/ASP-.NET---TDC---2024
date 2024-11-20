using System;
using System.Collections.Generic;

namespace Nhom5_ASP_DKTQDN.Models
{
    public partial class Khoa
    {
        public Khoa()
        {
            ChuyenDis = new HashSet<ChuyenDi>();
            GiangViens = new HashSet<GiangVien>();
            SinhViens = new HashSet<SinhVien>();
        }

        public int Id { get; set; }
        public string? MaKhoa { get; set; }
        public string? TenKhoa { get; set; }
        public string? SoDienThoai { get; set; }
        public string? Email { get; set; }
        public int? IsDeleted { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public int? UpdatedBy { get; set; }
        public DateTime? UpdatedAt { get; set; }

        public virtual ICollection<ChuyenDi> ChuyenDis { get; set; }
        public virtual ICollection<GiangVien> GiangViens { get; set; }
        public virtual ICollection<SinhVien> SinhViens { get; set; }
    }
}
