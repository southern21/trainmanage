﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.BLL
{
    class KetQuaBLL
    {
        DAL.KetQuaDAL dal;
        public KetQuaBLL()
        {
            dal = new DAL.KetQuaDAL();
        }
        public DataTable getAllKetQua()
        {
            return dal.getAllKetQua();
        }
        public DataTable getViewKetQuaMonHocSV()
        {
            return dal.getViewKetQuaMonHocSV();
        }
        public DataTable getIDKetQua(int id)
        {
            return dal.getIDKetQua(id);
        }
        public bool insertKetQua(Entities.tblKetQua kq)
        {
            return dal.insertKetQua(kq);
        }
        public bool updateKetQua(Entities.tblKetQua kq)
        {
            return dal.updateKetQua(kq);
        }
        public bool deleteKetQua(Entities.tblKetQua kq)
        {
            return dal.deleteKetQua(kq);
        }
    }
}
