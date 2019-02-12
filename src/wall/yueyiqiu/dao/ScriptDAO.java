package wall.yueyiqiu.dao;

import java.sql.*;
import java.util.*;

import wall.yueyiqiu.model.ScriptForm;
import wall.yueyiqiu.util.ConnDB;

public class ScriptDAO {
	private ConnDB conn;
	
	public ScriptDAO(){
		this.conn=new ConnDB();
	}
	
	public List<ScriptForm> query(String condition){
		
		List<ScriptForm> list=new ArrayList<ScriptForm>();
		ScriptForm sf=null;
		String sql="";
		if(condition==null){
			sql="select * from tb_scrip";
		}
		else{
			sql="select * from tb_scrip"+condition;
		}
		
		ResultSet rs=this.conn.executeQuery(sql);
		
		try{
		while(rs.next()){
			sf=new ScriptForm();
			sf.setId(rs.getInt(1));
			sf.setWishman(rs.getString(2));
			sf.setWisher(rs.getString(3));
			sf.setContent(rs.getString(4));
			sf.setColor(rs.getInt(5));
			sf.setFace(rs.getInt(6));
			sf.setSendtime(rs.getDate(7));
			sf.setHits(rs.getInt(8));
			list.add(sf);
		}
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		this.conn.close();
		return list;
	}
	
public List<ScriptForm> queryTop10(){
		
		List<ScriptForm> list=new ArrayList<ScriptForm>();
		ScriptForm sf=null;
		String sql="select top 10 * from tb_scrip order by sendTime desc";
		
		
		ResultSet rs=this.conn.executeQuery(sql);
		
		try{
		while(rs.next()){
			sf=new ScriptForm();
			sf.setId(rs.getInt(1));
			sf.setWishman(rs.getString(2));
			sf.setWisher(rs.getString(3));
			sf.setContent(rs.getString(4));
			sf.setColor(rs.getInt(5));
			sf.setFace(rs.getInt(6));
			sf.setSendtime(rs.getDate(7));
			sf.setHits(rs.getInt(8));
			list.add(sf);
		}
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		this.conn.close();
		return list;
	}

public int getCount(){
	
	String sql="select count(*) from tb_scrip";
	ResultSet rs=this.conn.executeQuery(sql);
	int count=0;
	try{
	rs.next();
	count=rs.getInt(1);
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	this.conn.close();
	return count;
}

	public String insert(ScriptForm form){
		String resultstr;
		String sql="insert into tb_scrip (wishMan,wellWisher,[content],color,face)"
				+ " values ('"+form.getWishman()+"','"+form.getWisher()+"','"+form.getContent()+"','"+form.getColor()+"','"+form.getFace()+"')";
		
		try{
		int flag=conn.executeUpdate_id(sql);
		if(flag>0){
			resultstr="恭喜您!!訊息發送成功,訊息編號為["+flag+"]";
		}
		else{
			resultstr="很抱歉!!訊息發送失敗!";
		}
		this.conn.close();
		}
		catch(Exception e){
			resultstr="很抱歉!!訊息發送失敗!";
			e.getMessage();
		}
		return resultstr;
	}

}
