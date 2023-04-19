package action;

import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.PROD_MD;
import svc.ShoppingProdDetailService;
import vo.ActionForward;
import vo.ProdInfo;

public class ShoppingProdAction implements Action {
	
public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 
	   	
		int prod_num1=Integer.parseInt(request.getParameter("prod_num"));
		String prod_name = request.getParameter("prod_name");
		String prod_mem_id = request.getParameter("prod_mem_id");
		int prod_quantity = Integer.parseInt(request.getParameter("quantity_opt"));
		int prod_price = Integer.parseInt(request.getParameter("prod_price"));
		//String prod_bigct = request.getParameter("prod_bigct");
		//String prod_smallct = request.getParameter("prod_smallct");
		System.out.println("action1 prod_num="+prod_num1);
		System.out.println("action1 prod_nam="+prod_name);
		System.out.println("action1 prod_nid="+prod_mem_id);
		System.out.println("action1 prod_qua="+prod_quantity);
		System.out.println("action1 prod_pri="+prod_price);
		//String page = request.getParameter("page");
		
		
		ProdInfo prodinfo = new ProdInfo();
		prodinfo.setProd_name(prod_name);
		prodinfo.setProd_mem_id(prod_mem_id);
		prodinfo.setProd_quantity(prod_quantity);
		prodinfo.setProd_price(prod_price);
		//prodinfo.setProd_bigct(prod_bigct);
		//prodinfo.setProd_smallct(prod_smallct);
		System.out.println(prodinfo.getProd_num());
		System.out.println(prodinfo.getProd_name());
		System.out.println(prodinfo.getProd_mem_id());
		System.out.println(prodinfo.getProd_quantity());
		System.out.println(prodinfo.getProd_price());
		
		
		ShoppingProdDetailService prodDetailService = new ShoppingProdDetailService();
		prodDetailService.getProd(prodinfo);
		
		ActionForward forward = new ActionForward();
		
		//request.setAttribute("page", page);
	   	
   		forward.setPath("/shopping_basket.jsp");
   		
   		return forward;

	 }
	
	

}
