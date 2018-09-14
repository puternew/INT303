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

    private int x;
    private int y;
    private String opStr;

    public int getResult() {
        switch (opStr) {
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

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

    public String getOpStr() {
        return opStr;
        
    }

    public void setX(int x) {
        this.x = x;
    }

    public void setY(int y) {
        this.y = y;
    }

    public void setOpStr(String opStr) {
        this.opStr = opStr;
    }

    @Override
    public String toString() {
        return String.format("<h1> x = %d , y = %d </h1> <h2> %d %s %d = %d </h2>", x ,y,  x,opStr,y, getResult());
    }
    
}
