package camp.kh.semi.common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Servlet Filter implementation class InitFilter
 */
@WebFilter("/InitFilter")
public class InitFilter implements Filter {

	private Logger logger = LoggerFactory.getLogger(InitFilter.class);	
    /**
     * Default constructor. 
     */
    public InitFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		// application 내장 객체 얻어오기
		ServletContext application = request.getServletContext();

		// 최상위 주소 얻어오기
		String contextPath = ((HttpServletRequest) request).getContextPath();
		// 다운캐스팅
		
		// 세팅
		application.setAttribute("contextPath", contextPath);
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
