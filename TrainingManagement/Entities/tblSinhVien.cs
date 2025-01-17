﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.Entities
{
    class tblSinhVien
    {
        int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        int _idlop;

        public int Idlop
        {
            get { return _idlop; }
            set { _idlop = value; }
        }
        int _idtrangthai;

        public int Idtrangthai
        {
            get { return _idtrangthai; }
            set { _idtrangthai = value; }
        }
        string _masinhvien;

        public string Masinhvien
        {
            get { return _masinhvien; }
            set { _masinhvien = value; }
        }
        string _tensinhvien;

        public string Tensinhvien
        {
            get { return _tensinhvien; }
            set { _tensinhvien = value; }
        }
        DateTime _namsinh;

        public DateTime Namsinh
        {
            get { return _namsinh; }
            set { _namsinh = value; }
        }
        string _gioitinh;

        public string Gioitinh
        {
            get { return _gioitinh; }
            set { _gioitinh = value; }
        }
        string _noisinh;

        public string Noisinh
        {
            get { return _noisinh; }
            set { _noisinh = value; }
        }
        string _diachi;

        public string Diachi
        {
            get { return _diachi; }
            set { _diachi = value; }
        }
        string _matrangthai;

        public string Matrangthai
        {
            get { return _matrangthai; }
            set { _matrangthai = value; }
        }
        string _tentrangthai;

        public string Tentrangthai
        {
            get { return _tentrangthai; }
            set { _tentrangthai = value; }
        }
        int _idtaikhoan;

        public int Idtaikhoan
        {
            get { return _idtaikhoan; }
            set { _idtaikhoan = value; }
        }
    }
}
