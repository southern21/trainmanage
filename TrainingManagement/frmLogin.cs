﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TrainingManagement
{
    public partial class frmLogin : Form
    {
        BLL.TaiKhoanBLL bllTaiKhoan;
        public frmLogin()
        {
            InitializeComponent();
            bllTaiKhoan = new BLL.TaiKhoanBLL();
        }

        //X Close

        private DialogResult PreClosingConfirmation()
        {
            DialogResult res = System.Windows.Forms.MessageBox.Show("Bạn có muốn thoát hay không?", "Thoát", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            return res;
        }
        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            base.OnFormClosing(e);
            if (PreClosingConfirmation() == System.Windows.Forms.DialogResult.Yes)
            {
                Dispose(true);
                this.Close();
            }
            else
            {
                e.Cancel = true;
            }
        }

        //ESC Close
        protected override bool ProcessDialogKey(Keys keyData)
        {
            if (Form.ModifierKeys == Keys.None && keyData == Keys.Escape)
            {
                if (PreClosingConfirmation() == System.Windows.Forms.DialogResult.Yes)
                {
                    Dispose(true);
                    this.Close();
                }
                return true;
            }
            return base.ProcessDialogKey(keyData);
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            if (PreClosingConfirmation() == System.Windows.Forms.DialogResult.Yes)
            {
                Dispose(true);
                this.Close();
            }
        }
        //Encrypt password code
        /*
        public string HashPass(string password)
        {
            SHA256 sha = new SHA256CryptoServiceProvider();

            //compute hash from the bytes of text
            sha.ComputeHash(ASCIIEncoding.ASCII.GetBytes(password + email));

            //get hash result after compute it
            byte[] result = sha.Hash;

            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                //change it into 2 hexadecimal digits
                //for each byte
                strBuilder.Append(result[i].ToString("x2"));
            }

            return strBuilder.ToString();
        }
        */

        private void txtGioiThieu_TextChanged(object sender, EventArgs e)
        {


        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            this.txtUser.Focus();
        }

        public bool checkObject()
        {
            if(string.IsNullOrWhiteSpace(txtUser.Text))
            {
                MessageBox.Show("Bạn chưa nhập tên tài khoản", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtUser.Focus();
                return false;
            }
            if(string.IsNullOrWhiteSpace(txtPass.Text)){
                MessageBox.Show("Bạn chưa nhập mật khẩu","Cảnh báo",MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {   /* 
            try
            {
                DataTable dt = new DataTable();
                dt = bllTaiKhoan.checkTaiKhoan(txtPass.Text.Trim(),txtUser.Text.Trim());
                checkObject();
                if (x == 1) 
                {
                    //đăng nhập thành công 
                    frmQuanTri _frmQuanTri = new frmQuanTri();
                    this.Hide();
                    _frmQuanTri.Show();
                } 
                else { 
                    //đăng nhập thất bại 
                    lblIncorrect.Text = "Account Or Password Is Not Correct"; 
                    txtAccount.Text = ""; 
                    txtPassword.Text = ""; 
                    txtAccount.Focus(); 
                } 
            } 
            catch (Exception ex) 
            { 
                MessageBox.Show(ex.Message); 
            }
            if(dt.Rows.Count > 0)
            {
                string permission = dt.Rows[0][2].ToString;

            }

            DataTable dt = new DataTable();
            */
            string tmp = txtUser.Text.Substring(0, 2);
            try
            {
                SqlConnection conn = new SqlConnection(@"server=KHDT-HIEU;database=trainmanage;Integrated Security=true");
                SqlCommand comd = new SqlCommand("select * from tblTaiKhoan WHERE tentaikhoan=@tentaikhoan and matkhau=@matkhau", conn);
                conn.Open();
                comd.Parameters.AddWithValue("@tentaikhoan", txtUser.Text.Trim());
                comd.Parameters.AddWithValue("@matkhau", txtPass.Text.Trim());
                SqlDataReader dr = comd.ExecuteReader();
                if (dr.HasRows == false)
                {
                    MessageBox.Show("Loi user hoac pass");
                }
                else
                {
                    if (tmp == "gv")
                    {
                        this.Hide();
                        MessageBox.Show("Đăng nhập thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        frmGiaoVien _frmGiaoVien = new frmGiaoVien();
                        _frmGiaoVien.Show();
                    }
                    else if (tmp == "ql")
                    {
                        this.Hide();
                        frmQuanLy _frmQuanLy = new frmQuanLy();
                        MessageBox.Show("Đăng nhập thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        _frmQuanLy.Show();
                    }
                    else
                    {
                        this.Hide();
                        MessageBox.Show("Đăng nhập thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        frmQuanTri _frmQuanTri = new frmQuanTri();
                        _frmQuanTri.Show();
                    }

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), "Loi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void cbxShowPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (cbxShowPassword.Checked)
            {
                txtPass.UseSystemPasswordChar = false;
            }
            else
            {
                txtPass.UseSystemPasswordChar = true;
            }
        }

    }
}
