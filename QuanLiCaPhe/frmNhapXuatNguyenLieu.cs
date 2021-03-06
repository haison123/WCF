﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BUS_QLCP;
using DTO_QLCP;

namespace QuanLiCaPhe
{

    public partial class frmNhapXuatNguyenLieu : Form
    {
        NXNguyenLieuBO nlBO = new NXNguyenLieuBO();
        public frmNhapXuatNguyenLieu()
        {
            InitializeComponent();
        }
        private NXNguyenLieu getData()
        {
            int i = 0, j = 0;
            NXNguyenLieu nxnl = new NXNguyenLieu();
            //nxnl.MaPhieuNhap = int.Parse(txtMaPhieuNhap.Text);
            //nxnl.MaPhieuXuat = int.Parse(txtMaPhieuXuat.Text);
            Int32.TryParse(txtMaPhieuNhap.Text, out i);
            Int32.TryParse(txtMaPhieuXuat.Text, out j);
            nxnl.MaPhieuNhap = i;
            nxnl.MaPhieuXuat = j;
            nxnl.NgayNhap = Convert.ToDateTime(dtNgayNhap.Value.ToShortDateString());
            nxnl.NgayXuat = Convert.ToDateTime(dtNgayXuat.Value.ToShortDateString());
            nxnl.TongTien = 0;
            return nxnl;
        }

        private void cbHinhThuc_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = 0;
            if (cbHinhThuc.Text == "Nhập Nguyên Liệu")
            {
                gbNhapNL.Visible = true;
                gbXuatNL.Visible = false;
                i = nlBO.layMaPhieuNhap();
                i++;
                txtMaPhieuNhap.Text = i.ToString();
            }
            if(cbHinhThuc.Text == "Xuất Nguyên Liệu")
            {
                gbNhapNL.Visible = false;
                gbXuatNL.Visible = true;
                i = nlBO.layMaPhieuXuat();
                i++;
                txtMaPhieuXuat.Text = i.ToString(); 
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (gbNhapNL.Visible == true)
            {
                dtNgayNhap.Value = DateTime.Today;
                txtMaPhieuNhap.Text = "";
            }
            else
                if (gbXuatNL.Visible == true)
                {
                    txtMaPhieuXuat.Text = "";
                    dtNgayXuat.Value = DateTime.Today;
                }
           
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
            frmFormMenu frmMenu;
            frmMenu = new frmFormMenu();
            frmMenu.Show();
        }

        private void btnNhapChiTiet_Click(object sender, EventArgs e)
        {
            if (cbHinhThuc.Text == "Nhập Nguyên Liệu")
            {
                NXNguyenLieu nx = getData();
                if (nlBO.NhapNL(nx))
                {
                    frmCTNhapNL FromCTNhap;
                    FromCTNhap = new frmCTNhapNL(txtMaPhieuNhap.Text);
                    FromCTNhap.Show();
                    this.Close();
                }
                else
                    MessageBox.Show("Lỗi xảy ra!");
            }
            else 
                if(cbHinhThuc.Text=="Xuất Nguyên Liệu")
                {
                    NXNguyenLieu nx = getData();
                    if(nlBO.XuatNL(nx))
                    {
                        frmCTXuatNL FromCTXuat;
                        FromCTXuat = new frmCTXuatNL(txtMaPhieuXuat.Text);
                        FromCTXuat.Show();
                        this.Close();
                    }
                    else 
                    MessageBox .Show ("Lỗi xảy ra!");
                }
        }
    }
}
