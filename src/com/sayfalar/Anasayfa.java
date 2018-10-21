package com.sayfalar;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sayfalar.model.Personel;


@WebServlet("/")
public class Anasayfa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Anasayfa() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		ServletContext context = this.getServletContext();
		ArrayList<Personel> perlist = (ArrayList<Personel>) context.getAttribute("liste"); 
		
		PrintWriter writer = response.getWriter();
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		writer.append("<html>");
		writer.append("<head></head>");
		writer.append("<body>");
		
		writer.append("<h1>Servlet Sayfamýza Hoþgeldiniz. </h1>");
				
		writer.append("Listedeki Personel Sayýmýz : "+perlist.size());
		
		writer.append("</body>");
		writer.append("</html>");
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
