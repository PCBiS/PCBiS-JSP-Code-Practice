package jdbc;

import java.util.StringTokenizer;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class Loader extends HttpServlet {

	@Override
	public void init(ServletConfig conf) throws ServletException {
		
		String jdbcDrivers = conf.getInitParameter("jdbcDriver");
		StringTokenizer st = new StringTokenizer(jdbcDrivers, ",");
		
		try {
			while (st.hasMoreTokens()) {
				String driver = st.nextToken();
				Class.forName(driver);
				System.out.println(driver + " 로드 성공!");	
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("Driver 로드 실패!");
		}
	}

}
