/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.test;

import java.util.List;
import sit.int303.first.model.LineItem;
import sit.int303.first.model.ShoppingCart;
import sit.int303.mockup.model.Product;

/**
 *
 * @author INT303
 */
public class TestShoppigCart {
    public static void main(String[] args) {
        ShoppingCart cart1 = new ShoppingCart();
        
        Product p = new Product();
        p.setProductCode("S10_001");
        p.setProductName("Harlay");
        p.setMsrp(100.0);
        
        cart1.add(p);
        
        p = new Product();
        p.setProductCode("S10_002");
        p.setProductName("Honda");
        p.setMsrp(15.0);
        
        cart1.add(p);
        cart1.add(p);
        cart1.add(p);
        
        
        List<LineItem> lines = cart1.getLineItems();
        for (LineItem line : lines){
            System.out.printf("%-8s %-15s %8.2f\n", line.getProduct().getProductCode(),line.getProduct().getProductName(),line.getProduct().getMsrp());
        }
        System.out.println("-----------------------------------");
        System.out.println("total price : "+cart1.getTotalPrice());
        System.out.println("total Q : "+cart1.getTotalQuantity());
        System.out.println("-----------------------------------");
         
        cart1.remove("S10_001");
        
        System.out.println("total price : "+cart1.getTotalPrice());
        System.out.println("total price : "+cart1.getTotalQuantity());
        System.out.println("-----------------------------------");
        
            
        cart1.remove(p);
        System.out.println("total price : "+cart1.getTotalPrice());
        System.out.println("total price : "+cart1.getTotalQuantity());
        
       
        
    }
}
