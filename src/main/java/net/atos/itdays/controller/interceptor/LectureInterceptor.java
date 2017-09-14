package net.atos.itdays.controller.interceptor;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LectureInterceptor extends HandlerInterceptorAdapter {

	private static Logger logger = Logger.getLogger(LectureInterceptor.class.getName());
	
	@Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        logger.info(" Pre handle ");
        if(httpServletRequest.getMethod().equals("GET"))
            return true;
        else
            return false;
    }

	 @Override
	    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
	        logger.info(" Post handle ");
	        if(modelAndView.getModelMap().containsKey("status")){
	            String status = (String) modelAndView.getModelMap().get("status");
	            if(status.equals("SUCCESS!")){
	                status = "Authentication " + status;
	                modelAndView.getModelMap().put("status",status);
	            }
	        }
	    }

	    @Override
	    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
	        logger.info(" After Completion ");
	    }
	
}
