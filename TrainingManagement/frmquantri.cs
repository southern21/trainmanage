﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TrainingManagement.GUI;

namespace TrainingManagement
{

    public partial class frmQuanTri : Form
    {
        public frmQuanTri()
        {
            InitializeComponent();
        }
        private DialogResult PreClosingConfirmation()
        {
            DialogResult res = System.Windows.Forms.MessageBox.Show("Bạn có muốn thoát hay không?", "Thoát", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            return res;
        }

        //X Close
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
                    Close();
                }
                return true;
            }
            return base.ProcessDialogKey(keyData);
        }

        private void thoátToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (PreClosingConfirmation() == System.Windows.Forms.DialogResult.Yes)
            {
                Dispose(true);
                this.Close();
            }
        }

        private void mônHọcToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            clearControlPanel();
            GUI.tblTaiKhoan uc = new GUI.tblTaiKhoan();
            uc.Dock = DockStyle.Fill;
            pnQuanTri.Controls.Add(uc); 
        }

        private void mônHọcToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void thôngTinCáNhânToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void giáoViênToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void sinhViênToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void quảnLýChấtLượngToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void quảnTrịToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }


        private void lớpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            clearControlPanel();
            GUI.tblLop uc = new GUI.tblLop();
            uc.Dock = DockStyle.Fill;
            pnQuanTri.Controls.Add(uc);    
        }

        private void clearControlPanel()
        {
            this.pnQuanTri.Controls.Clear();
        }

        private void khoaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            clearControlPanel();
            GUI.tblKhoa uc = new GUI.tblKhoa();
            uc.Dock = DockStyle.Fill;
            pnQuanTri.Controls.Add(uc); 
        }

        private void pnQuanTri_Paint(object sender, PaintEventArgs e)
        {

        }

        private void mstquantri_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void frmQuanTri_Load(object sender, EventArgs e)
        {
            GUI.ucMain uc = new GUI.ucMain();
            uc.Dock = DockStyle.Fill;
            pnQuanTri.Controls.Add(uc); 
        }

        private void niênKhóaToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            clearControlPanel();
            GUI.tblChuongTrinhDaoTao uc = new GUI.tblChuongTrinhDaoTao();
            uc.Dock = DockStyle.Fill;
            pnQuanTri.Controls.Add(uc); 

        }

        private void họcKỳToolStripMenuItem_Click(object sender, EventArgs e)
        {
            clearControlPanel();
            GUI.tblHocKy uc = new GUI.tblHocKy();
            uc.Dock = DockStyle.Fill;
            pnQuanTri.Controls.Add(uc); 
        }

        private void mônHọcToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            clearControlPanel();
            GUI.tblMonHoc uc = new GUI.tblMonHoc();
            uc.Dock = DockStyle.Fill;
            pnQuanTri.Controls.Add(uc); 
        }

        private void niênKhóaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            clearControlPanel();
            GUI.tblNienKhoa uc = new GUI.tblNienKhoa();
            uc.Dock = DockStyle.Fill;
            pnQuanTri.Controls.Add(uc); 
        }

        private void sinhViênToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            clearControlPanel();
            GUI.tblSinhVien uc = new GUI.tblSinhVien();
            uc.Dock = DockStyle.Fill;
            pnQuanTri.Controls.Add(uc); 
        }

        private void tínChỉToolStripMenuItem_Click(object sender, EventArgs e)
        {
            clearControlPanel();
            GUI.tblTinChi uc = new GUI.tblTinChi();
            uc.Dock = DockStyle.Fill;
            pnQuanTri.Controls.Add(uc); 
        }
    }
}
