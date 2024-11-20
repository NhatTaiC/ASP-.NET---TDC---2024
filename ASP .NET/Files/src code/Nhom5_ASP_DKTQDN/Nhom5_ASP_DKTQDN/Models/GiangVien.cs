using System;
using System.Collections.Generic;

namespace Nhom5_ASP_DKTQDN.Models
{
    public partial class GiangVien
    {
        public GiangVien()
        {
            ChuyenDis = new HashSet<ChuyenDi>();
        }

        public int Id { get; set; }
        public string? MaGiangVien { get; set; }
        public string? TenGiangVien { get; set; }
        public string? SoDienThoai { get; set; }
        public int IdKhoa { get; set; }
        public int? IsDeleted { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public int? UpdatedBy { get; set; }
        public DateTime? UpdatedAt { get; set; }

        public virtual Khoa IdKhoaNavigation { get; set; } = null!;
        public virtual ICollection<ChuyenDi> ChuyenDis { get; set; }
    }
}
