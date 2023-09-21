package com.winter.app.aop;

import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class Transfer {
	
	//point-cut
	public void useBus() {
		log.info(" 버스 타기 ");		
	}

	//point-cut
	public void useSubway() {
		log.info(" 지하철 타기 ");
	}

}
