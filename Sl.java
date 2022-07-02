package ConnTools;
import java.sql.*;
import java.util.*;
import java.util.Comparator;
public class Sl extends SearchSort{
	public String udid,fname,gender,dob,phn_no,tod,cid,cname;
	public int age;
	public Sortname sn=new Sortname();
	public Sortage sa=new Sortage();
	public String toString() {
		return this.fname+" "+this.age+" "+this.gender+" "+this.udid+" "+this.dob+" "+this.phn_no
				+" "+this.tod+" "+this.cid+" "+this.cname;
	}
	public class Sortname implements Comparator<Sl>{
		public int compare(Sl a1,Sl a2) {
			return a1.fname.compareTo(a2.fname);
		}
	}
	public class Sortage implements Comparator<Sl>{
		public int compare(Sl a1,Sl a2) {
			return a1.age-a2.age;
		}
	}
	public <T> List<Sl> searchall() throws SQLException,NumberFormatException{
		List<Sl> result = new ArrayList<>();
		try {
			Connection conn = Reg.Establish();
			if(conn!=null){
				Statement st=conn.createStatement();
				ResultSet rs;
				rs=st.executeQuery("select * from usertot");
				while(rs.next()) {
					Sl f=new Sl();
					f.udid=rs.getString("udid");
					f.cid=String.valueOf(rs.getInt("cid"));
					f.fname=rs.getString("fname");
					f.age=rs.getInt("age");
					f.gender=rs.getString("gender");
					f.dob=rs.getString("dob");
					f.phn_no=rs.getString("phn_no");
					f.tod=rs.getString("disablity");
					f.cname=rs.getString("cname");
					result.add(f);
				}
				if(Reg.closeConnection(conn))
					System.out.println("Connection Closed");
			}
			else{
				System.out.println("Connection not Established");
			}
		}
		catch(SQLException e) {
			System.out.println(e);
		}
		return result;
	}
}
