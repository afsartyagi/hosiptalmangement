package jsp2;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
@WebListener
public class Dbconnection implements ServletContextListener
{
	public void contextInitialized(ServletContextEvent evt) 
	{
		ServletContext app=evt.getServletContext();
		try {
            	Class.forName("com.mysql.cj.jdbc.Driver");
            	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/","root","root");
              	createDatabase(cn);
              	Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost/jspn1","root","root");
              	createTable(cn1);
              	PreparedStatement  pinsert=cn1.prepareStatement("insert into jspn2 values(?,?,?,?,?,?)");
	            app.setAttribute("insert",pinsert);
	            Statement st=cn1.createStatement();
	            app.setAttribute("st",st);
	            PreparedStatement  spt=cn1.prepareStatement("select * from jspn2 where cid=?");
	            app.setAttribute("spt",spt);
	            PreparedStatement  dpt=cn1.prepareStatement("delete from jspn2 where cid=?");
	            app.setAttribute("dpt",dpt);
	            PreparedStatement  upt=cn1.prepareStatement("UPDATE jspn2 SET firstname=?, lastname=?, city=?, phone=?, email=? WHERE cid=?");
	            app.setAttribute("upt",upt);
		}	
	catch(Exception ex)
		{
			System.out.println(ex);
		}
	}

private static void createDatabase(Connection cn) throws Exception
{
	Statement st=cn.createStatement();
	st.execute("create database if not exists jspn1");
	System.out.println("database created");
}
private static void createTable(Connection cn1) throws Exception
{	
	Statement st=cn1.createStatement();
	st.execute("create table if not exists jspn2(cid int primary key,firstname varchar(20),lastname varchar(20),city varchar(20),phone  varchar(20),email varchar(40))");
	System.out.println("Table Created");
}
}

