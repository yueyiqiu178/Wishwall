package wall.yueyiqiu.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wall.yueyiqiu.dao.ScriptDAO;
import wall.yueyiqiu.model.ScriptForm;

/**
 * Servlet implementation class ScriptServlet
 */

public class ScriptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ScriptDAO dao=null; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScriptServlet() {
        super();
        this.dao=new ScriptDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
		if(action.equals("scriptQuery"))
			this.scriptQuery(request, response);
		else if(action.equals("scriptAdd"))
			this.scriptAdd(request, response);
		else if(action.equals("scrollScript"))
			this.scrollScript(request, response);
			
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
	
	
	protected void scriptQuery(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("scriptList", dao.query(null));
		this.getServletContext().getRequestDispatcher("/wishwall.jsp").forward(request, response);
	}
	
	protected void scriptAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String wishman=request.getParameter("wishman");
		String wisher=request.getParameter("wisher");
		String color=request.getParameter("color");
		String face=request.getParameter("face");
		String content=request.getParameter("content");
		//wisher=new String(wisher.getBytes("ISO-8859-1"),"utf-8");
		System.out.println("wishman="+wishman);
		System.out.println("wisher="+wisher);
		ScriptForm form=new ScriptForm();
		form.setColor(Integer.parseInt(color));
		form.setContent(content);
		form.setFace(Integer.parseInt(face));
		form.setWisher(wisher);
		form.setWishman(wishman);
		String rtn=this.dao.insert(form);
		System.out.println(rtn);
		request.setAttribute("returnValue", rtn);
		this.getServletContext().getRequestDispatcher("/scriptAdd_ok.jsp").forward(request, response);
	}
	protected void scrollScript(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("scrollscript", dao.queryTop10());
		request.getRequestDispatcher("scrollScript_ok.jsp").forward(request, response);
	}
}
