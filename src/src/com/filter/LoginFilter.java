package src.com.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 * Servlet Filter implementation class LoginFilter
 */
public class LoginFilter implements Filter {


	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}
	
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request1, ServletResponse response1, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest request = (HttpServletRequest) request1;
		HttpServletResponse response =(HttpServletResponse) response1;
		String refererUrl = request.getHeader("Referer");
		HttpSession session = request.getSession();
		if(session.getAttribute("useraccount")==null){
			String requestURI =request.getRequestURI();
			String contextPath = request.getContextPath();
			String forwardURI = requestURI.substring(contextPath.length());
			session.setAttribute("viewPage", forwardURI);
			
			if(refererUrl==null || refererUrl=="") {
				response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect(refererUrl);
			}
			
		}else{
			chain.doFilter(request,response);
		}
	}


	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}
	
}
