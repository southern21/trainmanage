﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.BLL
{
    class NienKhoaBLL
    {
        DAL.NienKhoaDAL dal;
        public NienKhoaBLL()
        {
            dal = new DAL.NienKhoaDAL();
        }
        public DataTable getAllNienKhoa()
        {
            return dal.getAllNienKhoa();
        }
        public DataTable getIDNienKhoa(int id)
        {
            return dal.getIDNienKhoa(id);
        }
        public bool insertNienKhoa(Entities.tblNienKhoa nk)
        {
            return dal.insertNienKhoa(nk);
        }
        public bool updateNienKhoa(Entities.tblNienKhoa nk)
        {
            return dal.updateNienKhoa(nk);
        }
        public bool deleteNienKhoa(Entities.tblNienKhoa nk)
        {
            return dal.deleteNienKhoa(nk);
        }
    }
}
