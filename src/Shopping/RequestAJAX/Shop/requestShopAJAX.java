package Shopping.RequestAJAX.Shop;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import Common.MyBatis;
import Shopping.DTO.Shop;


public class requestShopAJAX  extends HttpServlet {
	private static final long serialVersionUID = 234154155313513L;
	public requestShopAJAX(){}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
		super.doGet(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
		super.doPost(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		JSONObject json = new JSONObject();
		
		String sRequest = request.getParameter("request");
		
		if (null != sRequest) {
			if (sRequest.equals("ShopInputDB")) {
				String sMName = request.getParameter("mName");
				String sTName = request.getParameter("tName");
				MyBatis<Shop> miDB = new MyBatis<Shop>("Shopping.Shop");
				Shop shopObj = new Shop();
				if (null != sMName) {
					miObj.setmName(sMName);
				} else if (null != sTName) {
					miObj.setmPoster(sTName);
				}
				List<String> list = (List<String>) mi.nameSql(
						"findMovie01", miObj);
				if (0 == list.size()) {

				} else {
					output.append(" { \"response\":\"" + list + "\" }");
				}
				
				response.setContentType("application/json");
			    response.setCharacterEncoding("UTF-8");
			    response.getWriter().write(json);       
			     
			}
		}
		
		

		String country=request.getParameter("countryname");
		Map<String, String> ind = new LinkedHashMap<String, String>();
	    ind.put("1", "New delhi");
	    ind.put("2", "Tamil Nadu");
	    ind.put("3", "Kerala");
	    ind.put("4", "Andhra Pradesh");
	    
	    Map<String, String> us = new LinkedHashMap<String, String>();
	    us.put("1", "Washington");
	    us.put("2", "California");
	    us.put("3", "Florida");
	    us.put("4", "New York");
	    
	    Map<String, String> reset = new LinkedHashMap<String, String>();
	    reset.put("1", "Select State");
	    
	    String json = null ;
	    if(country.equals("India")){
	    	json= new Gson().toJson(ind);   
	    }
	    else if(country.equals("US")){
	    	json=new Gson().toJson(us);  
	    }
	    else if(country.equals("Select Country"))
	    {
	    	json=new Gson().toJson(reset);
	    }
	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
		    
		
	}
	
}
