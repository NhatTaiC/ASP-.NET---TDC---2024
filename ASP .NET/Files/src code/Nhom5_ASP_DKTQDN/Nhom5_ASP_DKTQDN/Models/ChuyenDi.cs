using System.ComponentModel.DataAnnotations.Schema;

namespace Nhom5_ASP_DKTQDN.Models
{
    public partial class ChuyenDi
    {
        public ChuyenDi()
        {
            ChiTietDangKies = new HashSet<ChiTietDangKy>();
        }

        public int Id { get; set; }
        public string? MaChuyenDi { get; set; }
        public int? Slot { get; set; }
        public DateTime? NgayThamQuan { get; set; }
        public int? TrangThai { get; set; }
        public int? HocKi { get; set; }
        public int? NamHoc { get; set; }
        public int IdGiangVien { get; set; }
        public int IdDoanhNghiep { get; set; }
        public int IdKhoa { get; set; }
        public int IdKhoaHoc { get; set; }
        public int? IsDeleted { get; set; }
        public int? CreatedBy { get; set; }

        public DateTime? CreatedAt { get; set; }
        public int? UpdatedBy { get; set; }
        public DateTime? UpdatedAt { get; set; }
        [NotMapped]
        public int? SoNguoiDaDangKy { get; set; }
        public virtual DoanhNghiep IdDoanhNghiepNavigation { get; set; } = null!;
        public virtual GiangVien IdGiangVienNavigation { get; set; } = null!;
        public virtual KhoaHoc IdKhoaHocNavigation { get; set; } = null!;
        public virtual Khoa IdKhoaNavigation { get; set; } = null!;
        public virtual ICollection<ChiTietDangKy> ChiTietDangKies { get; set; }
    }
}
