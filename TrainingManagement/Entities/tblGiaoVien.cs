﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TrainingManagement.Entities
{
    class tblGiaoVien
    {
        int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        int _idchucvu;

        public int Idchucvu
        {
            get { return _idchucvu; }
            set { _idchucvu = value; }
        }
        int _idlop;

        public int Idlop
        {
            get { return _idlop; }
            set { _idlop = value; }
        }
        int _idkhoa;

        public int Idkhoa
        {
            get { return _idkhoa; }
            set { _idkhoa = value; }
        }
        int _idmonhoc;

        public int Idmonhoc
        {
            get { return _idmonhoc; }
            set { _idmonhoc = value; }
        }
        int _idtaikhoan;

        public int Idtaikhoan
        {
            get { return _idtaikhoan; }
            set { _idtaikhoan = value; }
        }
    }
}
