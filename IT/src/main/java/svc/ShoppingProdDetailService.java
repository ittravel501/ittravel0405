package svc;

import java.sql.Connection;

import dao.ProdDao;
import vo.ProdInfo;
import static db.JdbcUtil.*;

public class ShoppingProdDetailService {
	
	public void getProd (ProdInfo prodinfo) throws Exception {

		System.out.println(prodinfo.getProd_num());
		System.out.println(prodinfo.getProd_name());
		System.out.println(prodinfo.getProd_mem_id());
		System.out.println(prodinfo.getProd_quantity());
		System.out.println(prodinfo.getProd_price());
		
		Connection con = getConnection();
		ProdDao prodDao = ProdDao.getInstance();
		prodDao.setConnection(con);
		prodDao.Prod_order_info(prodinfo);
		
		//상품번호를 가져와서 그 정보들을 가져와서 보내야함 
		
		close(con);
		System.out.println("마지막"+con + "\n");

	}

}
