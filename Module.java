package ConnTools;

import java.sql.SQLException;
import java.util.ArrayList;

public interface Module {
	public boolean checkexist() throws SQLException;
	public boolean upd(String u_name) throws SQLException,NumberFormatException;
	public boolean ucd(String u_name) throws SQLException,NumberFormatException;
	public static boolean log(String eu,String ep) throws SQLException{return false;}
	 public boolean insert()throws SQLException ;
	 public static boolean quota(String u_name,String count1) throws SQLException{return false;}
	 public static boolean schlorship(String u_name,String count1) throws SQLException{return false;}
	 public static <T> ArrayList<String> schemes(String a) throws SQLException,NumberFormatException{return null;}
	 public static <T> Usr pd(String u_name) throws SQLException,NumberFormatException{return null;}
	 public static <T> Usr cd(String u_name) throws SQLException,NumberFormatException{return null;}
	 public static boolean modify(String a,String b,String c) {return false;}
	 public static boolean delete(String a,String b) {return false;}
}
