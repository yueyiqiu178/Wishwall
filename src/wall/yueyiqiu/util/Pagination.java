package wall.yueyiqiu.util;

import java.util.ArrayList;
import java.util.List;

import wall.yueyiqiu.model.ScriptForm;

public class Pagination {
	public List<ScriptForm> list=null;
	private int recordCount;
	private int pagesize;
	private int maxpage;
	
	public List<ScriptForm> getInitPage(List<ScriptForm> list,int page,int pagesize){
		
		List<ScriptForm> newList=new ArrayList<ScriptForm>();
		this.list=list;
		this.recordCount=list.size();
		this.pagesize=pagesize;
		return newList;
		
		
		
	}
	
	
	
	public int getMaxPage(){
		int maxpage=this.recordCount%this.pagesize==0?this.recordCount/this.pagesize:this.recordCount/this.pagesize+1;
		return maxpage;
	}
	
	public int getRecordSize(){
		return this.recordCount;
	}
	
	
	
}
