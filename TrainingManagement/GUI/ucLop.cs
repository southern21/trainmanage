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

namespace TrainingManagement.GUI
{
    public partial class ucLop : UserControl
    {
        BLL.LopBLL bllLop;
        string _ID;
        public ucLop()
        {
            InitializeComponent();
            bllLop = new BLL.LopBLL();
        }

        private void ucLop_Load(object sender, EventArgs e)
        {
            ReLoad();
        }
        string flag;

        private void grvLop_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        public void LockObject()
        {
            txtID.ReadOnly = true;
            txtIDKhoa.ReadOnly = true;
            txtIDNienKhoa.ReadOnly = true;
            txtMaLop.ReadOnly = true;
            txtSiSo.ReadOnly = true;
            txtTenLop.ReadOnly = true;
            btnAdd.Enabled = true;
            btnCancel.Enabled = false;
            btnDel.Enabled = false;
            btnSave.Enabled = false;
            btnUpdate.Enabled = false;
        }
        public void UnLockObject()
        {
            txtID.ReadOnly = false;
            txtIDKhoa.ReadOnly = false;
            txtIDNienKhoa.ReadOnly = false;
            txtMaLop.ReadOnly = false;
            txtSiSo.ReadOnly = false;
            txtTenLop.ReadOnly = false;
            btnAdd.Enabled = false;
            btnCancel.Enabled = true;
            btnDel.Enabled = true;
            btnSave.Enabled = true;
            btnUpdate.Enabled = true;
        }
        public void ResetText()
        {

        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            flag = "add";
            UnLockObject();
            txtMaLop.Text = "";
            txtTenLop.Text = "";
            txtSiSo.Text = "";
        }
        public bool CheckObject()
        {
            if (string.IsNullOrEmpty(txtMaLop.Text))
            {
                MessageBox.Show("Bạn chua nhập thông tin mã lớp", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMaLop.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(txtTenLop.Text))
            {

                MessageBox.Show("Bạn chua nhập thông tin tên lớp", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtTenLop.Focus();
                return false;
            }
            return true;
        }
        public void ReLoad()
        {
            DataTable dt = new DataTable();
            dt = bllLop.getAllLop();
            grcLop.DataSource = dt;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (CheckObject())
            {
                Entities.tblLop lp = new Entities.tblLop();
                if (string.IsNullOrEmpty(_ID))
                {
                    lp.Id = Int32.Parse(_ID);
                }
                lp.Idkhoa = Int32.Parse(txtIDKhoa.ToString());
                lp.Idnienkhoa = Int32.Parse(txtIDNienKhoa.ToString());
                lp.Malop = txtMaLop.Text;
                lp.Tenlop = txtTenLop.Text;
                lp.Siso = Int32.Parse(txtSiSo.ToString());
                if (flag == "add")
                {
                    bool check = bllLop.insertLop(lp);
                    if (check)
                    {
                        MessageBox.Show("Thêm thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                else if(flag == "edit")
                {
                    bool check = bllLop.updateLop(lp);
                    if (check)
                    {
                        MessageBox.Show("Cập nhật thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                ReLoad();
            }
        }

        private void grvLop_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            /*
            DataRow row= grvLop.GetDataRow(e.FocusedRowHandle);
            if(row != null)
            {
                _ID = row["id"].ToString();
                FillData(_ID);
            }
             * */
        }

        public void FillData(string id)
        {
            DataTable dt = new DataTable();
            dt = bllLop.getIDLop(Int32.Parse(id));
            if (dt.Rows.Count > 0)
            {
                txtIDKhoa.Text = dt.Rows[0]["IDNienKhoa"].ToString();
                txtMaLop.Text = dt.Rows[0]["MaLop"].ToString();
                txtTenLop.Text = dt.Rows[0]["TenLop"].ToString();
                txtSiSo.Text = dt.Rows[0]["SiSo"].ToString();
            }
        }
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            flag = "edit";

        } 

        private void dvgLop_Click(object sender, EventArgs e)
        {

        }
        private void ucLop_ControlAdded(object sender, ControlEventArgs e)
        {

        }

        private void dvgLop_FocusedViewChanged(object sender, DevExpress.XtraGrid.ViewFocusEventArgs e)
        {

        }


        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
