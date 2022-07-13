/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package view;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author emerson
 */
public abstract class Strategy<K> {
protected final K facade;
public Strategy(K facade) {
this.facade = facade;
}
public abstract String executar(String acao,
HttpServletRequest request);
}
