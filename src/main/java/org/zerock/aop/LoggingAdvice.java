package org.zerock.aop;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAdvice {
	
	static Logger logger = LoggerFactory.getLogger(LoggingAdvice.class); 
	
//	@Before("execution(* org.zerock.aop.test.*.*(..))")	// Before Advice // Point
	public void beforeLogging(JoinPoint jp) {
		
		Logger logger = LoggerFactory.getLogger(jp.getTarget().getClass());
		
		logger.info("######");
		logger.info("Start");
		logger.info("######");
		
	}
	
	@After("execution(* org.zerock.aop.test.*.*(..))") 	// After Advice
	public void afterLogging(JoinPoint jp) {
		
		Logger logger = LoggerFactory.getLogger(jp.getTarget().getClass());
		
		logger.info("######");
		logger.info("End...");
		logger.info("######");
		
		
	}
}
