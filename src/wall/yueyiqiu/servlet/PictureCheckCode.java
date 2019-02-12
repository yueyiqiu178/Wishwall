package wall.yueyiqiu.servlet;

import java.awt.*;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PictureCheckCode
 */

public class PictureCheckCode extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PictureCheckCode() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hello enter!!");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "No-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");
		int width=160;
		int height=45;
		BufferedImage bi=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		Graphics2D gd=(Graphics2D) bi.getGraphics();
		gd.setColor(this.getRandColor(200, 250));
		gd.fillRect(0,0,width,height);
		//BasicStroke bs=new BasicStroke(2f,BasicStroke.CAP_BUTT,BasicStroke.JOIN_BEVEL);
		//gd.setColor(Color.RED);
		//gd.setStroke(bs);
		gd.setColor(Color.PINK);
		Random rand=new Random();
		int[] xPoint=new int[3];
		int[] yPoint=new int[3];
		for(int i=0;i<3;i++){
			xPoint[i]=rand.nextInt(width-1);
			yPoint[i]=rand.nextInt(height-1);
		}
		//gd.drawPolygon(xPoint, yPoint, 3);
		
		String sRand="";
		int temp;
		for(int i=0;i<4;i++){
			if(rand.nextInt(2)==1){
				temp=rand.nextInt(26)+65;
			}
			else{
				temp=rand.nextInt(10)+48;
			}
			char ctmp=(char) temp;
			sRand+=String.valueOf(ctmp);
			Color color=new Color(20+rand.nextInt(110),20+rand.nextInt(110),20+rand.nextInt(110));
			gd.setColor(Color.YELLOW);
			AffineTransform trans=new AffineTransform();
			trans.rotate(rand.nextInt(45)*3.14/180,15*i+10,7);
			//缩放文字
			float scaleSize=rand.nextFloat()+8.5f;
			if(scaleSize<0.8 || scaleSize>1.1f) scaleSize=1f;
			trans.scale(scaleSize, scaleSize);
			gd.setTransform(trans);
			gd.drawString(String.valueOf(ctmp), 25*i+20, 15);
		}
		System.out.println(sRand);
		request.getSession(true).setAttribute("randcheckcode", sRand);
		gd.dispose();
		ImageIO.write(bi, "JPEG", response.getOutputStream());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
	
	private Color getRandColor(int fc,int bc){
		
		Random rand=new Random();
		if(fc>255) fc=255;
		if(bc>255) bc=255;
		int r=rand.nextInt(bc-fc);
		int g=rand.nextInt(bc-fc);
		int b=rand.nextInt(bc-fc);
		return new Color(r,g,b);
		
	}
	
	
	
}
