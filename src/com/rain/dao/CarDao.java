package com.rain.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.rain.bean.CarsBean;
import com.rain.util.DBUtil;

public class CarDao {
	/**
	 * 根据传入的aid，查找到对应的读者的全部信息，返回一个AdminBean类型的数据
	 * @param aid
	 * @return
	 * @throws ClassNotFoundException 
	 */
	public ArrayList<CarsBean> get_CarInfo(int id) throws ClassNotFoundException{
		ArrayList<CarsBean> tag_Array = new ArrayList<>();
		
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from carsbean where id="+id;
		//System.out.println(sql);
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				CarsBean carsbean=new CarsBean();
				carsbean.setId(rs.getInt("id"));
				carsbean.setCarnum(rs.getString("carnum"));
				carsbean.setCartype(rs.getString("cartype"));
				carsbean.setCarname(rs.getString("carname"));
				carsbean.setCarbrand(rs.getString("carbrand"));
				carsbean.setCarset(rs.getString("carset"));
				carsbean.setCarfact(rs.getString("carfact"));
				carsbean.setCarspeed(rs.getString("carspeed"));
				carsbean.setCarprice(rs.getString("carprice"));
				carsbean.setCarwhere(rs.getString("carwhere"));
				carsbean.setCaroil(rs.getString("caroil"));
				carsbean.setImg(rs.getString("img"));
				tag_Array.add(carsbean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag_Array;
	}

}
