﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.BLL
{
    class ChuongTrinhDaoTaoBLL
    {
        DAL.ChuongTrinhDaoTaoDAL dal;
        public ChuongTrinhDaoTaoBLL()
        {
            dal = new DAL.ChuongTrinhDaoTaoDAL();
        }
        public DataTable getAllChuongTrinhDaoTao()
        {
            return dal.getAllChuongTrinhDaoTao();
        }
        public DataTable getIDChuongTrinhDaoTao(int id)
        {
            return dal.getIDChuongTrinhDaoTao(id);
        }
        public bool insertChuongTrinhDaoTao(Entities.tblChuongTrinh ctdt)
        {
            return dal.insertChuongTrinhDaoTao(ctdt);
        }
        public bool updateChuongTrinhDaoTao(Entities.tblChuongTrinh ctdt)
        {
            return dal.updateChuongTrinhDaoTao(ctdt);
        }
        public bool deleteChuongTrinhDaoTao(Entities.tblChuongTrinh ctdt)
        {
            return dal.deleteChuongTrinhDaoTao(ctdt);
        }
    }
}
