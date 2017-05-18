/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sk
 */
public class MyChat {
    public static void main(String[] args)
    {
        new ClientGUI("localhost", 8080);
        new ServerGUI(8080);
    }
    
}
