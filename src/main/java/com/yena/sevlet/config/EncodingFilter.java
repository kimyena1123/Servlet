package com.yena.sevlet.config;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class EncodingFilter implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		
		chain.doFilter(req, res);
	}
	
}
