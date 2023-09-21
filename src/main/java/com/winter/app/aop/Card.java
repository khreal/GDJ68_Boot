package com.winter.app.aop;

import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
@Aspect
public class Card {

	//advice
	@Before("execution(* com.winter.app.aop.Transfer.*())")
	public void cardCheck() throws Exception {
		log.info("==========================================");
		log.info("Card Check");
		log.info("==========================================");
		
	}
}
