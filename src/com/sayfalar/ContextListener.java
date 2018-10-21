package com.sayfalar;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.sayfalar.model.Personel;

/**
 * Application Lifecycle Listener implementation class ContextListener
 *
 */
@WebListener
public class ContextListener implements ServletContextListener {

   
    public ContextListener() {
      
    }


    public void contextDestroyed(ServletContextEvent arg0)  { 
      
    }


    public void contextInitialized(ServletContextEvent context)  { 
    	
    	ServletContext cont = context.getServletContext();
    	
    	ArrayList<Personel> plist = (ArrayList<Personel>) cont.getAttribute("liste");
    	
    	if(plist == null) {
    		
    		plist = new ArrayList<Personel>();
    			
    		cont.setAttribute("liste", plist);
    	}
    	
    	
      
    }
	
}
