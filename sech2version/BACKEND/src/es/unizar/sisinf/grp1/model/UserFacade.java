package es.unizar.sisinf.grp1.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import es.unizar.sisinf.grp1.db.ConnectionManager;

public class UserFacade{
	private static String countByUserName="SELECT count(*) cuenta FROM usuarios WHERE id=";
	private static String findByUserName="SELECT * FROM usuarios WHERE id=";
	
	public boolean validateUser(int id,String password) {
		boolean result = false;
		try {
			String consulta1=countByUserName+id;
			String consulta2=findByUserName+id;
			Connection conn=ConnectionManager.getConnection();
			PreparedStatement countPs=conn.prepareStatement(consulta1);
			PreparedStatement findPs=conn.prepareStatement(consulta2);
			
			ResultSet findRs=findPs.executeQuery();
			ResultSet countRs=countPs.executeQuery();
			
			countRs.next();
			int n=countRs.getInt(1);
			if(n==1) {
				findRs.next();
				String dbpwd=findRs.getString("password");
				if(dbpwd.contentEquals(password)) {
					result=true;
				}
			}
			findRs.close();
			findPs.close();
			countRs.close();
			countPs.close();
			return result;
		}catch(SQLException se) {
			se.printStackTrace();
			return result;
		}catch(Exception e) {
			e.printStackTrace(System.err);
			return result;
		}
	}
}
