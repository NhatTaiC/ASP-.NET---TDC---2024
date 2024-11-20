using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Nhom5_ASP_DKTQDN.Models
{
    public partial class DKTQDNContext : DbContext
    {
        public DKTQDNContext()
        {
        }

        public DKTQDNContext(DbContextOptions<DKTQDNContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AspNetRole> AspNetRoles { get; set; } = null!;
        public virtual DbSet<AspNetRoleClaim> AspNetRoleClaims { get; set; } = null!;
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; } = null!;
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; } = null!;
        public virtual DbSet<AspNetUserLogin> AspNetUserLogins { get; set; } = null!;
        public virtual DbSet<AspNetUserToken> AspNetUserTokens { get; set; } = null!;
        public virtual DbSet<ChiTietDangKy> ChiTietDangKies { get; set; } = null!;
        public virtual DbSet<ChuyenDi> ChuyenDis { get; set; } = null!;
        public virtual DbSet<DoanhNghiep> DoanhNghieps { get; set; } = null!;
        public virtual DbSet<GiangVien> GiangViens { get; set; } = null!;
        public virtual DbSet<Khoa> Khoas { get; set; } = null!;
        public virtual DbSet<KhoaHoc> KhoaHocs { get; set; } = null!;
        public virtual DbSet<SinhVien> SinhViens { get; set; } = null!;
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=.\\SQLEXPRESS; Database=DKTQDN; Trusted_Connection =True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AspNetRole>(entity =>
            {
                entity.HasIndex(e => e.NormalizedName, "RoleNameIndex")
                    .IsUnique()
                    .HasFilter("([NormalizedName] IS NOT NULL)");

                entity.Property(e => e.Name).HasMaxLength(256);

                entity.Property(e => e.NormalizedName).HasMaxLength(256);
            });

            modelBuilder.Entity<AspNetRoleClaim>(entity =>
            {
                entity.HasIndex(e => e.RoleId, "IX_AspNetRoleClaims_RoleId");

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetRoleClaims)
                    .HasForeignKey(d => d.RoleId);
            });

            modelBuilder.Entity<AspNetUser>(entity =>
            {
                entity.HasIndex(e => e.NormalizedEmail, "EmailIndex");

                entity.HasIndex(e => e.NormalizedUserName, "UserNameIndex")
                    .IsUnique()
                    .HasFilter("([NormalizedUserName] IS NOT NULL)");

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.NormalizedEmail).HasMaxLength(256);

                entity.Property(e => e.NormalizedUserName).HasMaxLength(256);

                entity.Property(e => e.UserName).HasMaxLength(256);

                entity.HasMany(d => d.Roles)
                    .WithMany(p => p.Users)
                    .UsingEntity<Dictionary<string, object>>(
                        "AspNetUserRole",
                        l => l.HasOne<AspNetRole>().WithMany().HasForeignKey("RoleId"),
                        r => r.HasOne<AspNetUser>().WithMany().HasForeignKey("UserId"),
                        j =>
                        {
                            j.HasKey("UserId", "RoleId");

                            j.ToTable("AspNetUserRoles");

                            j.HasIndex(new[] { "RoleId" }, "IX_AspNetUserRoles_RoleId");
                        });
            });

            modelBuilder.Entity<AspNetUserClaim>(entity =>
            {
                entity.HasIndex(e => e.UserId, "IX_AspNetUserClaims_UserId");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserClaims)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserLogin>(entity =>
            {
                entity.HasKey(e => new { e.LoginProvider, e.ProviderKey });

                entity.HasIndex(e => e.UserId, "IX_AspNetUserLogins_UserId");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserLogins)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserToken>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.LoginProvider, e.Name });

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserTokens)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<ChiTietDangKy>(entity =>
            {
                entity.ToTable("ChiTietDangKy");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("created_at");

                entity.Property(e => e.CreatedBy).HasColumnName("created_by");

                entity.Property(e => e.IdChuyenDi).HasColumnName("idChuyenDi");

                entity.Property(e => e.IdSinhVien).HasColumnName("idSinhVien");

                entity.Property(e => e.IsDeleted).HasColumnName("is_deleted");

                entity.Property(e => e.NgayDangKy).HasColumnType("datetime");

                entity.Property(e => e.UpdatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("updated_at");

                entity.Property(e => e.UpdatedBy).HasColumnName("updated_by");

                entity.HasOne(d => d.IdChuyenDiNavigation)
                    .WithMany(p => p.ChiTietDangKies)
                    .HasForeignKey(d => d.IdChuyenDi)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietDangKy_ChuyenDi");

                entity.HasOne(d => d.IdSinhVienNavigation)
                    .WithMany(p => p.ChiTietDangKies)
                    .HasForeignKey(d => d.IdSinhVien)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietDangKy_SinhVien");
            });

            modelBuilder.Entity<ChuyenDi>(entity =>
            {
                entity.ToTable("ChuyenDi");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("created_at");

                entity.Property(e => e.CreatedBy).HasColumnName("created_by");

                entity.Property(e => e.IdDoanhNghiep).HasColumnName("idDoanhNghiep");

                entity.Property(e => e.IdGiangVien).HasColumnName("idGiangVien");

                entity.Property(e => e.IdKhoa).HasColumnName("idKhoa");

                entity.Property(e => e.IdKhoaHoc).HasColumnName("idKhoaHoc");

                entity.Property(e => e.IsDeleted).HasColumnName("is_deleted");

                entity.Property(e => e.MaChuyenDi)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.NgayThamQuan).HasColumnType("datetime");

                entity.Property(e => e.UpdatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("updated_at");

                entity.Property(e => e.UpdatedBy).HasColumnName("updated_by");

                entity.HasOne(d => d.IdDoanhNghiepNavigation)
                    .WithMany(p => p.ChuyenDis)
                    .HasForeignKey(d => d.IdDoanhNghiep)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChuyenDi_DoanhNghiep");

                entity.HasOne(d => d.IdGiangVienNavigation)
                    .WithMany(p => p.ChuyenDis)
                    .HasForeignKey(d => d.IdGiangVien)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChuyenDi_GiangVien");

                entity.HasOne(d => d.IdKhoaNavigation)
                    .WithMany(p => p.ChuyenDis)
                    .HasForeignKey(d => d.IdKhoa)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChuyenDi_Khoa");

                entity.HasOne(d => d.IdKhoaHocNavigation)
                    .WithMany(p => p.ChuyenDis)
                    .HasForeignKey(d => d.IdKhoaHoc)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChuyenDi_KhoaHoc");
            });

            modelBuilder.Entity<DoanhNghiep>(entity =>
            {
                entity.ToTable("DoanhNghiep");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("created_at");

                entity.Property(e => e.CreatedBy).HasColumnName("created_by");

                entity.Property(e => e.DiaChi).HasMaxLength(100);

                entity.Property(e => e.IsDeleted).HasColumnName("is_deleted");

                entity.Property(e => e.MaDoanhNghiep)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.SoDienThoai)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.TenDoanhNghiep).HasMaxLength(100);

                entity.Property(e => e.UpdatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("updated_at");

                entity.Property(e => e.UpdatedBy).HasColumnName("updated_by");
            });

            modelBuilder.Entity<GiangVien>(entity =>
            {
                entity.ToTable("GiangVien");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("created_at");

                entity.Property(e => e.CreatedBy).HasColumnName("created_by");

                entity.Property(e => e.IdKhoa).HasColumnName("idKhoa");

                entity.Property(e => e.IsDeleted).HasColumnName("is_deleted");

                entity.Property(e => e.MaGiangVien)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.SoDienThoai)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.TenGiangVien).HasMaxLength(100);

                entity.Property(e => e.UpdatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("updated_at");

                entity.Property(e => e.UpdatedBy).HasColumnName("updated_by");

                entity.HasOne(d => d.IdKhoaNavigation)
                    .WithMany(p => p.GiangViens)
                    .HasForeignKey(d => d.IdKhoa)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_GiangVien_Khoa");
            });

            modelBuilder.Entity<Khoa>(entity =>
            {
                entity.ToTable("Khoa");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("created_at");

                entity.Property(e => e.CreatedBy).HasColumnName("created_by");

                entity.Property(e => e.Email)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.IsDeleted).HasColumnName("is_deleted");

                entity.Property(e => e.MaKhoa)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.SoDienThoai)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.TenKhoa).HasMaxLength(100);

                entity.Property(e => e.UpdatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("updated_at");

                entity.Property(e => e.UpdatedBy).HasColumnName("updated_by");
            });

            modelBuilder.Entity<KhoaHoc>(entity =>
            {
                entity.ToTable("KhoaHoc");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("created_at");

                entity.Property(e => e.CreatedBy).HasColumnName("created_by");

                entity.Property(e => e.IsDeleted).HasColumnName("is_deleted");

                entity.Property(e => e.MaKhoaHoc)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.UpdatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("updated_at");

                entity.Property(e => e.UpdatedBy).HasColumnName("updated_by");
            });

            modelBuilder.Entity<SinhVien>(entity =>
            {
                entity.ToTable("SinhVien");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("created_at");

                entity.Property(e => e.CreatedBy).HasColumnName("created_by");

                entity.Property(e => e.Email)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.IdKhoa).HasColumnName("idKhoa");

                entity.Property(e => e.IdKhoaHoc).HasColumnName("idKhoaHoc");

                entity.Property(e => e.IdTaiKhoan).HasColumnName("idTaiKhoan");

                entity.Property(e => e.IsDeleted).HasColumnName("is_deleted");

                entity.Property(e => e.MaSinhVien)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.SoDienThoai)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.TenSinhVien).HasMaxLength(100);

                entity.Property(e => e.UpdatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("updated_at");

                entity.Property(e => e.UpdatedBy).HasColumnName("updated_by");

                entity.HasOne(d => d.IdKhoaNavigation)
                    .WithMany(p => p.SinhViens)
                    .HasForeignKey(d => d.IdKhoa)
                    .HasConstraintName("FK_SinhVien_Khoa");

                entity.HasOne(d => d.IdKhoaHocNavigation)
                    .WithMany(p => p.SinhViens)
                    .HasForeignKey(d => d.IdKhoaHoc)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SinhVien_KhoaHoc");

                entity.HasOne(d => d.IdTaiKhoanNavigation)
                    .WithMany(p => p.SinhViens)
                    .HasForeignKey(d => d.IdTaiKhoan)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SinhVien_TaiKhoan");
            });

            modelBuilder.Entity<TaiKhoan>(entity =>
            {
                entity.ToTable("TaiKhoan");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("created_at");

                entity.Property(e => e.CreatedBy).HasColumnName("created_by");

                entity.Property(e => e.IsDeleted).HasColumnName("is_deleted");

                entity.Property(e => e.MatKhau)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.TenTaiKhoan)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.UpdatedAt)
                    .HasColumnType("datetime")
                    .HasColumnName("updated_at");

                entity.Property(e => e.UpdatedBy).HasColumnName("updated_by");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
