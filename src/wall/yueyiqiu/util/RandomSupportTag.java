package wall.yueyiqiu.util;

import java.util.Random;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class RandomSupportTag extends TagSupport{
	
	private int n=0;
	private int base=0;
	/**
	 * @return the n
	 */
	public int getN() {
		return n;
	}
	/**
	 * @param n the n to set
	 */
	public void setN(int n) {
		this.n = n;
	}
	/**
	 * @return the base
	 */
	public int getBase() {
		return base;
	}
	/**
	 * @param base the base to set
	 */
	public void setBase(int base) {
		this.base = base;
	}
	/* (non-Javadoc)
	 * @see javax.servlet.jsp.tagext.TagSupport#doStartTag()
	 */
	@Override
	public int doStartTag() throws JspException {
		JspWriter out=this.pageContext.getOut();
		
		try{
			Random rnd=new Random();
			int num=rnd.nextInt(n);
			out.print(num+base);
		}
		catch(Exception e){
			System.out.println("生成隨機數時出錯了");
		}
		return this.SKIP_BODY;
	}
	
	
	
}
