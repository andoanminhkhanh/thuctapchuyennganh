﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ThucTapChuyenNganh.Class;

namespace ThucTapChuyenNganh.Forms
{
    public partial class Bangchamcong : Form
    {
        public Bangchamcong()
        {
            InitializeComponent();
        }
        DataTable tblchamcong;
        private void Bangchamcong_Load(object sender, EventArgs e)
        {
            btnBoqua.Enabled = false;
            load_datagridview(); 
            Function.FillCombo("SELECT MaNV,TenNV FROM tblnhanvien", cboMaNV, "MaNV", "MaNV");
            cboMaNV.SelectedIndex = -1;
            resetvalues();
        }

        private void load_datagridview()
        {
            string sql;
            sql = "SELECT * from tblbangchamcong";

            tblchamcong = Function.GetDataToTable(sql);
            dgridcChamCong.DataSource = tblchamcong;
            dgridcChamCong.Columns[0].HeaderText = "Mã nhân viên";
            dgridcChamCong.Columns[1].HeaderText = "Ngày làm";
            dgridcChamCong.Columns[2].HeaderText = "Giờ vào";
            dgridcChamCong.Columns[3].HeaderText = "Giờ ra";
            //string ma = dgridcChamCong.CurrentRow.Cells["MaNV"].Value.ToString();
            //cboMaNV.Text = Function.GetFieldValues("SELECT MaNV FROM tblbangchamcong WHERE MaNV = N'" + ma + "'");
            dgridcChamCong.AllowUserToAddRows = false;
            dgridcChamCong.EditMode = DataGridViewEditMode.EditProgrammatically; 
        }

        private void resetvalues()
        {
            cboMaNV.Text = "";
            mskNgayLam.Text = "";
            mskGiovao.Text = "";
            mskGiora.Text = "";
        }
        private void dgridcChamCong_Click(object sender, EventArgs e)
        {
            //cboMaNV.Text = dgridcChamCong.CurrentRow.Cells["MaNV"].Value.ToString();
            mskNgayLam.Text = dgridcChamCong.CurrentRow.Cells["NgayLam"].Value.ToString();
            mskGiovao.Text = dgridcChamCong.CurrentRow.Cells["GioVaoLam"].Value.ToString();
            mskGiora.Text = dgridcChamCong.CurrentRow.Cells["GioTanLam"].Value.ToString();
            string ma = dgridcChamCong.CurrentRow.Cells["MaNV"].Value.ToString();
            cboMaNV.Text = Function.GetFieldValues("SELECT MaNV FROM tblnhanvien WHERE MaNV = N'" + ma + "'");
            dgridcChamCong.AllowUserToAddRows = false;
            btnSua.Enabled = true;
            btnXoa.Enabled = true;
            btnBoqua.Enabled = true;
        }

        private void btnVao_Click(object sender, EventArgs e)
        {
            string sql;
            if (cboMaNV.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải chọn mã nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cboMaNV.Focus();
                return;
            }
            string currentDate = DateTime.Now.ToString("dd-MM-yyyy");
            string currentTime = DateTime.Now.ToString("HH:mm:ss");
            mskNgayLam.Text = currentDate;
            mskGiovao.Text = currentTime;
            mskGiora.Text = currentTime;
            sql = "SELECT MaNV FROM tblnhanvien WHERE MaNV = N'" + cboMaNV.Text.Trim() + "'";
            if (Function.CheckKey(sql) == false)
            {
                MessageBox.Show("Mã nhân viên này chưa tồn tại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cboMaNV.Focus();
                return;
            }

            sql = "INSERT INTO tblbangchamcong (MaNV, NgayLam, GioVaoLam, GioTanLam) VALUES (N'" + cboMaNV.SelectedValue.ToString() + "',  CONVERT(DATE, N'" + DateTime.Now.ToString("dd-MM-yyyy") + "' , 105), CONVERT(TIME, N'" + mskGiovao.Text.Trim() + "'), CONVERT(TIME, N'" + mskGiora.Text.Trim() + "'))";

            Function.RunSql(sql);
            load_datagridview();
            resetvalues();
            btnXoa.Enabled = true;
            btnSua.Enabled = true;
            btnBoqua.Enabled = true;
            cboMaNV.Enabled = false;

        }
        
   

        private void btnBoqua_Click(object sender, EventArgs e)
        {

            resetvalues();
            btnBoqua.Enabled = false;
            btnVao.Enabled = true;
            btnRa.Enabled = true;
            btnXoa.Enabled = true;
            btnSua.Enabled = true;
            cboMaNV.Enabled = true;
        }

        private void btnRa_Click(object sender, EventArgs e)
        {
            string sql;
            if (cboMaNV.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn bản ghi nào", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            sql = "UPDATE tblbangchamcong SET GioTanLam = CONVERT(TIME, N'" + DateTime.Now.ToString("HH:mm:ss") + "') WHERE MaNV = N'" + cboMaNV.SelectedValue.ToString() + "' AND  NgayLam = CONVERT(DATE, N'" + mskNgayLam.Text + "',105)";
            Function.RunSql(sql);
            load_datagridview();
            resetvalues();
            cboMaNV.Enabled=false;
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            string sql;
            if (tblchamcong.Rows.Count == 0)
            {
                MessageBox.Show("Không còn dữ liệu nào", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;

            }
            if (cboMaNV.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn bản ghi nào", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (mskNgayLam.Text == "  /  /")
            {
                MessageBox.Show("Bạn phải nhập ngày làm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (mskGiovao.Text == "  :")
            {
                MessageBox.Show("Bạn phải nhập giờ vào làm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (mskGiora.Text == "  :")
            {
                MessageBox.Show("Bạn phải nhập giờ tan làm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            sql = "UPDATE tblbangchamcong SET GioVaoLam = N'" + mskGiovao.Text.Trim() + "', GioTanLam = N'" + mskGiora.Text.Trim() + "'WHERE MaNV = N'" + cboMaNV.SelectedValue.ToString() + "'AND NgayLam = CONVERT(DATE, N'" + mskNgayLam.Text.Trim() + "', 105)";

            Function.RunSql(sql);
            load_datagridview();
            resetvalues();

            btnBoqua.Enabled = false;


        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            string sql;
            if (tblchamcong.Rows.Count == 0)
            {
                MessageBox.Show("Không có dữ liệu", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (cboMaNV.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn bản ghi nào", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (MessageBox.Show("Bạn muốn xóa không", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                sql = "DELETE FROM tblbangchamcong WHERE MaNV =N'" + cboMaNV.SelectedValue.ToString() + "' AND  NgayLam = CONVERT(DATE, N'" + mskNgayLam.Text+"',105)";
                Function.RunSql(sql);
                load_datagridview();
                resetvalues();
            }
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
