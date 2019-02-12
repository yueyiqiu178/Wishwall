package wall.yueyiqiu.util;

import java.io.*;
import java.sql.*;
import java.util.Properties;

public class ConnDB {
	
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet set = null;
	private static String dbClassName="com.hh.ss";
	private static String dbUrl="jdbc:sdd";
	private static String dbUser;
	private static String dbPassword;
	private static String propFileName="D:/JavaEEProject/Wishwall/src/wall/yueyiqiu/util/connDB.properties";
	private static Properties prop=new Properties();
	
	
	
	public ConnDB(){
		
		try{
		//InputStream in=this.getClass().getResourceAsStream(propFileName);
		prop.load(new FileInputStream(propFileName));
		dbClassName=prop.getProperty("DB_CLASS_NAME");
		dbUrl=prop.getProperty("DB_URL");
		dbUser=prop.getProperty("DB_USER");
		dbPassword=prop.getProperty("DB_PASSWORD");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public ConnDB(String ptr){System.out.println("hello");}
	
	
	public Connection getConnection(){
		
		Connection conn=null;
		try{
		Class.forName(dbClassName).newInstance();
		conn=DriverManager.getConnection(dbUrl,dbUser,dbPassword);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		if(conn==null){
			System.err.println("警告:資料庫接失敗了");
		}
		
		return conn;
	}
	
	
	public ResultSet executeQuery(String sql){
		
		try{
			this.conn=this.getConnection();
			this.stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			int yy=conn.getHoldability();
			this.set=stmt.executeQuery(sql);
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
			return this.set;
		
	}
	
	
	public int executeUpdate(String sql){
		
		int result=0;
		
		try{
		this.conn=this.getConnection();
		this.stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		result=stmt.executeUpdate(sql);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int executeUpdate_id(String sql){
		
		int result=0;
		System.out.println(sql);
		try{
		this.conn=this.getConnection();
		this.stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		result=stmt.executeUpdate(sql);
		
		String ID="select @@identity as ID";
		this.set=stmt.executeQuery(ID);
		if(set.next()){
			int autoid=set.getInt("id");
			result=autoid;
		}
		}
		catch(Exception e){
			e.printStackTrace();
			result=0;
		}
		
		return result;
	}
	
	
	public void close(){
		
		try{
		if(this.set!=null)
			this.set.close();
		if(this.stmt!=null)
			this.stmt.close();
		if(this.conn!=null)
			this.conn.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args){
		
		
			ConnDB c=new ConnDB();
			Connection tt=c.getConnection();
			try {
				System.out.println(tt.getCatalog());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
}
