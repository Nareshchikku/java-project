package ConnTools;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Admin extends User{
	public static boolean log(String eu,String ep) throws SQLException{
		 try { Connection conn=Reg.Establish();
		 Statement st=conn.createStatement();
		 ResultSet rs;
		 String p;
		 rs=st.executeQuery("select * from admin_login where aid='"+eu+"'");
		 if(rs.next()) {
			 p=rs.getString("apwd");
			 Reg.closeConnection(conn);
			 if(p.equals(ep)) {
				 return true;
			 }else return false;
		 }else {Reg.closeConnection(conn);
			 return false;
		 }
		 }catch(SQLException e) {
			 System.out.println(e);
			 return false;
		 }
	 }
	public static boolean insert(String a,String b,String c) {
		try{
			Connection con=Reg.Establish();
			Statement st=con.createStatement();
			String sql="insert into display_schemes(tod,schme,desp)  values('"+a+"','"+b+"','"+c+"')";
			st.executeUpdate(sql);
			con.close();
			return true;
		}catch (SQLException e){
	        return false;
		}
	}
	public static <T> ArrayList<String> schemes(String a) throws SQLException,NumberFormatException{
		try {
			Connection con=Reg.Establish();
			Statement st=con.createStatement();
			st=con.createStatement();
			ArrayList<String> b=new ArrayList<String>();
			ResultSet rs=st.executeQuery("select sco,schme from display_schemes where tod='"+a+"'");
			while(rs.next()) {
				b.add(rs.getString("sco"));
				b.add(rs.getString("schme"));
			}
			Reg.closeConnection(con);
			return b;}catch(SQLException e){
			 	return null;
			 }
		}
	public static boolean modify(String a,String b,String c) {
		try {
			Connection con=Reg.Establish();
			Statement st=con.createStatement();
			st=con.createStatement();
			st.executeUpdate("update display_schemes set tod='"+b+"',schme='"+c+"' where sco='"+a+"'");
			Reg.closeConnection(con);
			return true;
		}catch (SQLException e){
	        return false;
		}
	}
	public static boolean delete(String a,String b) {
		try {
			Connection con=Reg.Establish();
			Statement st=con.createStatement();
			st=con.createStatement();
			st.executeUpdate("delete from display_schemes where sco='"+a+"' and tod='"+b+"'");
			Reg.closeConnection(con);
			return true;
		}catch (SQLException e){
	        return false;
		}
	}
	public static boolean checkexist(String a,String b) {
		try {
			Connection con=Reg.Establish();
			Statement st=con.createStatement();
			st=con.createStatement();
			ResultSet rs=st.executeQuery("select *from display_schemes where sco="+a+" and tod="+b);
			if(rs.next()) {
				Reg.closeConnection(con);
				return true;
			}else {
				Reg.closeConnection(con);
				return false;
			}
		}catch (SQLException e){
	        return false;
		}
	}
}
