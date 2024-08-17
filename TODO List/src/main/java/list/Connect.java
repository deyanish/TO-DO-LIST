package list;
import java.sql.*;
import java.util.*;
public class Connect {
	private Connection con;
	private ResultSet rs;
	private PreparedStatement ps;
	public Connect(){
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","Anish@123");  
			System.out.println("Connected");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public boolean saveRecord(String sub,String desc)
	{
		boolean b=false;
		try {
			String sql="insert into todos(subject,description)values(?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, sub);
			ps.setString(2, desc);
			int n=ps.executeUpdate();
			 if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
	}
	
	public boolean updateRecord(String sub,String desc,int slno)
	{
		boolean b=false;
		try {
			String sql="update todos set subject=?,description=? where slno=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, sub);
			ps.setString(2, desc);
			ps.setInt(3, slno);
			int n=ps.executeUpdate();
			 if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
	}
	public ArrayList<ToDo> getRecords()
	{
		ArrayList<ToDo> arr=new ArrayList<>();
		try {
			String sql="select subject,description,slno from todos";
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next())
			{
				ToDo ob=new ToDo();
				ob.setSubject(rs.getString(1));
				ob.setDescription(rs.getString(2));
				ob.setSlno(rs.getInt(3));
				arr.add(ob);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return arr;
	}
	public void delRecords(String sub)
	{
		try {
			String sql="delete from todos where subject=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, sub);
			int n=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
}