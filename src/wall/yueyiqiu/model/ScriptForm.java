package wall.yueyiqiu.model;

import java.util.Date;

public class ScriptForm {
	
	private int id;
	private String wishman;
	private String wisher;
	private String content;
	private int color;
	private int face;
	private Date sendtime=null;
	private int hits;
	
	
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWishman() {
		return wishman;
	}
	public void setWishman(String wishman) {
		this.wishman = wishman;
	}
	public String getWisher() {
		return wisher;
	}
	public void setWisher(String wisher) {
		this.wisher = wisher;
	}
	public int getColor() {
		return color;
	}
	public void setColor(int color) {
		this.color = color;
	}
	public int getFace() {
		return face;
	}
	public void setFace(int face) {
		this.face = face;
	}
	public Date getSendtime() {
		return sendtime;
	}
	public void setSendtime(Date sendtime) {
		this.sendtime = sendtime;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	
	
	
	
	
}
