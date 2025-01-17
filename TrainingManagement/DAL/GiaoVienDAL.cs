﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.DAL
{
    class GiaoVienDAL
    {
        DataServices ds;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        public GiaoVienDAL()
        {
            ds = new DataServices();
        }
        public DataTable getAllGiaoVien()
        {
            string sql = "sp_tblGiaoVien_SelectAll";
            try
            {
                con = ds.getConnect();
                da = new SqlDataAdapter(sql, con);
                con.Open();
                cmd = new SqlCommand();
                cmd.CommandText = sql;
                cmd.Connection = con;
                dt = new DataTable();
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                ex.ToString();

            }
            finally
            {
                da.Dispose();
                con.Close();
            }
            return dt;
        }
        public DataTable getIDGiaoVien(int id)
        {
            string sql = "sp_tblGiaoVien_SelectID";
            try
            {
                con = ds.getConnect();
                cmd = new SqlCommand();
                da = new SqlDataAdapter(sql, con);
                con.Open();
                cmd.CommandText = sql;
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                dt = new DataTable();
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                ex.ToString();

            }
            finally
            {
                da.Dispose();
                con.Close();
            }
            return dt;
        }
        public bool insertGiaoVien(Entities.tblGiaoVien sv)
        {
            bool check = false;
            string sql = "sp_tblGiaoVien_Insert";
            try
            {
                con = ds.getConnect();
                cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = sql;
                cmd.Connection = con;
                cmd.Parameters.Add("@idchucvu", SqlDbType.Int).Value = sv.Idchucvu;
                cmd.Parameters.Add("@idlop", SqlDbType.Int).Value = sv.Idlop;
                cmd.Parameters.Add("@idkhoa", SqlDbType.Int).Value = sv.Idkhoa;
                cmd.Parameters.Add("@idmonhoc", SqlDbType.Int).Value = sv.Idmonhoc;
                cmd.Parameters.Add("@idtaikhoan", SqlDbType.Int).Value = sv.Idtaikhoan;
                cmd.ExecuteNonQuery();
                check = true;
            }
            catch (Exception ex)
            {
                ex.ToString();

            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
            return check;
        }
        public bool updateGiaoVien(Entities.tblGiaoVien sv)
        {
            bool check = false;
            string sql = "sp_tblGiaoVien_Update";
            try
            {
                con = ds.getConnect();
                cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = sql;
                cmd.Connection = con;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = sv.Id;
                cmd.Parameters.Add("@idchucvu", SqlDbType.Int).Value = sv.Idchucvu;
                cmd.Parameters.Add("@idlop", SqlDbType.Int).Value = sv.Idlop;
                cmd.Parameters.Add("@idkhoa", SqlDbType.Int).Value = sv.Idkhoa;
                cmd.Parameters.Add("@idmonhoc", SqlDbType.Int).Value = sv.Idmonhoc;
                cmd.Parameters.Add("@idtaikhoan", SqlDbType.Int).Value = sv.Idtaikhoan;
                cmd.ExecuteNonQuery();
                check = true;
            }
            catch (Exception ex)
            {
                ex.ToString();

            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
            return check;
        }
        public bool deleteGiaoVien(Entities.tblGiaoVien sv)
        {
            bool check = false;
            string sql = "sp_tblGiaoVien_Delete";
            try
            {
                con = ds.getConnect();
                cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = sv.Id;
                cmd.ExecuteNonQuery();
                check = true;
            }
            catch (Exception ex)
            {
                ex.ToString();

            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
            return check;
        }
    }
}
