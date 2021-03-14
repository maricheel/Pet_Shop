package dao;

import java.util.List;

import metier.entities.Order;

public class TestPet {
	
	
	public static void main(String[] args) {
		OrderDao dao =new OrderDao();
				
		List<Order> produits= dao.getOrders();
		
		for (Order p : produits) {
			System.out.println(p.getOrder_id());
			
		}
	}

}
