package DBServics;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Vector;

import DTO.Order;
import DTO.UserInfo;

public class DBServic {


	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

		} catch (Exception e) {

		}
	}

	 public static boolean insert(UserInfo u) {
		boolean res=false;
		Connection con =null;
		try {
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical?user=root&password=root");
		 PreparedStatement ps = con.prepareStatement("select * from userinfo where UserId=? and EmailId=?");
		 ps.setString(1, u.getUid());
		 ps.setString(2, u.getEmail());
		 ResultSet rs=ps.executeQuery();
		 if(rs.next()) {
			res=false;
		 }else {
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical?user=root&password=root");
			PreparedStatement ps1 = con.prepareStatement("insert into userinfo values(?,?,?,?,?,?,?,?)");
			ps1.setString(1, u.getDate());
			ps1.setString(2, u.getFname());
			ps1.setString(3, u.getLname());
			ps1.setString(4, u.getEmail());
			ps1.setString(5, u.getPhno());
			ps1.setString(6, u.getAddress());
			ps1.setString(7, u.getUid());
			ps1.setString(8, u.getPass1());
			int x =ps1.executeUpdate();
			if(x>=1) {
				res=true;
			}
		 }
		} catch (Exception e) {
			// TODO: handle exception
		}


		return res;
	}

	 public static boolean check(UserInfo u) {
			boolean res=false;
			try {
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical?user=root&password=root");
				PreparedStatement ps = con.prepareStatement("select * from userinfo where UserId=? and Password=?");

				ps.setString(1, u.getUid());
				ps.setString(2, u.getPass1());
				ResultSet rs = ps.executeQuery();
				if(rs.next()) {
					res=true;
				}

			} catch (Exception e) {
				// TODO: handle exception
			}


			return res;
		}


	 public static boolean update(UserInfo u) {
			boolean res=false;
			try {
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical?user=root&password=root");
				PreparedStatement ps = con.prepareStatement("update userinfo set Date=?,First_Name=?,Last_Name=?,Contect=?,Address=?,Password=? where EmailId=?");

				ps.setString(1, u.getDate());
				ps.setString(2, u.getFname());
				ps.setString(3, u.getLname());
				ps.setString(4, u.getPhno());
				ps.setString(5, u.getAddress());
				ps.setString(6, u.getPass1());
				ps.setString(7, u.getEmail());
				int x = ps.executeUpdate();
				if(x>=1) {
					res=true;
				}

			} catch (Exception e) {
				System.out.println(e);
			}


			return res;
		}

	 public static Vector display() {
			Vector v1=new Vector();


			try {
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical?user=root&password=root");
				PreparedStatement ps = con.prepareStatement("select * from userinfo");
				ResultSet rs = ps.executeQuery();


				while (rs.next()) {
					UserInfo u = new UserInfo();

					u.setDate(rs.getString(1));
					u.setFname(rs.getString(2));
					u.setLname(rs.getString(3));
					u.setEmail(rs.getString(4));
					u.setPhno(rs.getString(5));
					u.setAddress(rs.getString(6));
					u.setUid(rs.getString(7));
					u.setPass1(rs.getString(8));



					v1.add(u);


				}



		}catch(Exception e) {
			System.out.print("Error in SQL");
		}
			return v1;
		}

	public static boolean delete(UserInfo u) {
		boolean res = false;
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical?user=root&password=root");
			PreparedStatement ps = con.prepareStatement("delete from userinfo where UserId=?");

			ps.setString(1, u.getUid());

			int x=ps.executeUpdate();
			if(x>=1) {
				res=true;
			}

		} catch (Exception e) {
			// TODO: handle exception
		}


		return res;
	}

	public static boolean order(ArrayList al) {
		boolean res = false;
		try {
			Order o1 = new Order();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical?user=root&password=root");
			PreparedStatement ps1 = con.prepareStatement("insert into buy values(?,?,?,?)");
			int x=0;

			for (Object element : al) {
				 String item = (String)element;
				ps1.setString(1, o1.getDate());
			    ps1.setString(2,o1.getUid());
		       ps1.setString(3,item);
		       x =x + ps1.executeUpdate();
			  }


			if(x>=1) {
				res=true;
			}else {
				System.out.println("problem");
			}

		} catch (Exception e) {
			System.out.println(e);
		}




		return res;
	}

	public static Vector orderdisplay() {
		Vector v1=new Vector();


		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical?user=root&password=root");
			PreparedStatement ps = con.prepareStatement("select * from buy");
			ResultSet rs = ps.executeQuery();


			while (rs.next()) {
				Order o = new Order();

				o.setDate(rs.getString(1));

				o.setUid(rs.getString(2));
				o.setMedicine(rs.getString(3));
				o.setPrice(rs.getString(4));


				v1.add(o);


			}



	}catch(Exception e) {
		System.out.print("Error in SQL");
	}
		return v1;
	}

	public static boolean order01(String[] productNames, String[] productPrices,String uid) {
		boolean res = false;
		try {
			
			Order o1 = new Order();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical?user=root&password=root");
			int x=0;
			for (int i = 0; i < productNames.length; i++) {
			PreparedStatement ps1 = con.prepareStatement("insert into buy values(?,?,?,?)");
			
             
			
			ps1.setString(1, o1.getDate());
		    ps1.setString(2,uid);
		    ps1.setString(3, productNames[i]);
		    ps1.setString(4, productPrices[i]);
		    x =x + ps1.executeUpdate();
			  }


			if(x>=1) {
				res=true;
			}else {
				System.out.println("Somthing went Wrong");
			}
			


		
		} catch (Exception e) {
			System.out.println(e);
		}
		return res;
	}

}


