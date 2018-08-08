/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.model;

/**
 *
 * @author INT303
 */
public class SimpleCalculator {
    private double x;
    private double y;
    private String operator;

    public double getResult(){

        if (operator.equalsIgnoreCase("+")) {
                   return x + y; 
                }else if (operator.equalsIgnoreCase("-")) {
                   return x - y; 
                }else if (operator.equalsIgnoreCase("x")) {
                   return x * y; 
                }else if (operator.equalsIgnoreCase("/")) {
                   return x / y; 
                }
        return 0;
    }
    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public String getOperator() {
        return operator;
    }

    public void setX(double x) {
        this.x = x;
    }

    public void setY(double y) {
        this.y = y;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    @Override
    public String toString() {
        return "x="+x+",y="+y+","+x+operator+y+" = "+getResult();
    } 
    
    
}
