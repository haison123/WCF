﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO_QLCP;
using System.Data;

namespace DAL_QLCP
{
    public class DAL_NhanVien
    {
        DBAccess db = new DBAccess();

        public DataTable getDSNV()
        {
            string query = "Select * from tblNhanVien";
            return db.getDS(query);
        }

        public DataTable getDSNV_theoma(string maNV)
        {
            string query = "Select *from tblNhanVien where MaNV='" + maNV + "'";
            return db.getDS(query);
        }

        public bool kiemTraNhanVien(string maNV)
        {
            return db.kiemTraTonTai2(maNV);
        }

        public bool ThemNV(NhanVien nv)
        {
            string[] param = { "@MaNV", "@TenNV", "@NgaySinh", "@GioiTinh", "@TrinhDo", "@ChucVu", "@SoCM", "@DiaChi" };
            object[] values = { nv.MaNV, nv.TenNV, nv.NgaySinh, nv.GioiTinh, nv.TrinhDo, nv.ChucVu, nv.SoCM, nv.DiaChi };
            string query = "Insert into tblNhanVien(MaNV,TenNV,NgaySinh,GioiTinh,TrinhDoHocVan,ChucVu,SoCMND,DiaChi) values(@MaNV,@TenNV,@NgaySinh,@GioiTinh,@TrinhDo,@ChucVu,@SoCM,@DiaChi)";
            return db.ExecuteNonQueryPara(query, param, values);
        }
        public bool SuaNV(NhanVien nv)
        {
            string[] param = { "@MaNV", "@TenNV", "@NgaySinh", "@GioiTinh", "@TrinhDo", "@ChucVu", "@SoCM", "@DiaChi" };
            object[] values = { nv.MaNV, nv.TenNV, nv.NgaySinh, nv.GioiTinh, nv.TrinhDo, nv.ChucVu, nv.SoCM, nv.DiaChi };
            string query = "Update tblNhanVien set TenNV=@TenNV,NgaySinh=@NgaySinh,GioiTinh=@GioiTinh,TrinhDoHocVan=@TrinhDo,ChucVu=@ChucVu,SoCMND=@SoCM,DiaChi=@DiaChi where MaNV=@MaNV";
            return db.ExecuteNonQueryPara(query, param, values);
        }

        public bool XoaNV(NhanVien nv)
        {
            string[] param = { "@MaNV" };
            object[] values = { nv.MaNV };
            string query = "Delete from tblNhanVien where MaNV=@MaNV";
            return db.ExecuteNonQueryPara(query, param, values);
        }
    }
}
