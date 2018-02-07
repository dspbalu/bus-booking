package com.springproject.aop;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
@Aspect
public class BeforeExecution {
	
	@Autowired
	private HttpSession session;

    @Before("execution(* com.springproject.controller.Buscontroller.*(..))")
	    public void doAccessCheck() throws Exception {
	        System.out.println("before aop method executing");
	        if(session.getAttribute("passid") == null) {
	        	throw new Exception("No Session");
	        }
	    }

}


