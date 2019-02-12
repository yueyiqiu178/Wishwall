package wall.yueyiqiu.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class CharacterEncodingFilter
 */

public class CharacterEncodingFilter implements Filter {
	
	private String encoding;
	private FilterConfig config;
    /**
     * Default constructor. 
     */
    public CharacterEncodingFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		this.config=null;
		this.encoding=null;
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest requestX=(HttpServletRequest) request;
		String ajaxHeader=requestX.getHeader("x-requested-with");
		String contentType=requestX.getContentType();
		if(ajaxHeader==null)
			ajaxHeader="";
		System.out.println("ajaxHeader="+ajaxHeader);
		System.out.println("contentType="+contentType);
		if(ajaxHeader.equals("ajax")&&contentType.equals("application/x-www-form-urlencoded")){
			System.out.println("enter1");
			request.setCharacterEncoding("utf-8");
		}
		else{
			System.out.println("encoding="+encoding);
			System.out.println("enter2");
			//request.setCharacterEncoding(encoding);
		}
		
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		this.config=fConfig;
		this.encoding=config.getInitParameter("encoding");
	}

}
