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

    public double getResult() {
        switch (operator) {
            case "+":
                return x + y;
            case "-":
                return x - y;
            case "*":
                return x * y;
            case "/":
                return x / y;
            default:
                return 0;
        }
    }

    public double getX() {
        return x;
    }
    
    public void setX(double x){
        this.x = x;
    }
    
    public double getY() {
        return y;
    }

    public void setY(double y) {
        this.y = y;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }
    
    @Override
    public String toString(){
        return String.format("<h1> x = %.0f,y =%.0f,result %.0f %s %.0f = %.2f</h1>\n",
                    x,y,x,operator,y,getResult());
    }

}
