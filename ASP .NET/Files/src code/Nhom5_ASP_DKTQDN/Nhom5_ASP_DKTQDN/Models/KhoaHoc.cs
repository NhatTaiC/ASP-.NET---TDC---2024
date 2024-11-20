using System;
using System.Collections.Generic;

namespace Nhom5_ASP_DKTQDN.Models
{
    public partial class KhoaHoc
    {
        public KhoaHoc()
        {
            ChuyenDis = new HashSet<ChuyenDi>();
            SinhViens = new HashSet<SinhVien>();
        }

        public int Id { get; set; }
        public string? MaKhoaHoc { get; set; }
        public int? NamBatDau { get; set; }
        public int? NamKetThuc { get; set; }
        public int? IsDeleted { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public int? UpdatedBy { get; set; }
        public DateTime? UpdatedAt { get; set; }

        public virtual ICollection<ChuyenDi> ChuyenDis { get; set; }
        public virtual ICollection<SinhVien> SinhViens { get; set; }
    }
}
