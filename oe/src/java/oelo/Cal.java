/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package oelo;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;


@WebService(serviceName = "Cal")
public class Cal {

    @WebMethod
    public String sumar(String a, String b){
        int suma = Integer.parseInt(a)+Integer.parseInt(b);
        return String.valueOf(suma);
    }
    public int restar(int a, int b){
        return a-b;
    }
    public int multiplicar(int a, int b){
        return a*b;
    }
    public int dividir(int a, int b){
        return a/b;
    }
    
    
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
}
