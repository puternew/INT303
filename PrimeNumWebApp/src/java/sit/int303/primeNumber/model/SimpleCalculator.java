/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.primeNumber.model;

/**
 *
 * @author PANUPONG INTHILAD
 */
public class SimpleCalculator {
    private int input;
    
    public String getResult(){
        int check;
	boolean isPrime=true;
	System.out.println("Enter any number:");
        
        if(input>1){
	for(int i=2;i<=input/2;i++){      
           check=input%i;
	   if(check==0){
	      isPrime=false;
	   }
	}
	if(isPrime){
	   return input + " is a Prime Number";
            } 
        }
        
        return input + " is not a Prime Number";
    }

    public int getInput() {
        return input;
    }

    public void setInput(int input) {
        this.input = input;
    }

    @Override
    public String toString() {
        return this.input+getResult();
    }
    
    
}
   
