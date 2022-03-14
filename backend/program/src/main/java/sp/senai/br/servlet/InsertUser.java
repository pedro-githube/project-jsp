package sp.senai.br.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sp.senai.br.dao.UserDao;
import sp.senai.br.model.User;

@WebServlet("/insert-user")
public class InsertUser extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		User obj = null;
		
		try {
			
			String name = request.getParameter("txtName");
			String telephone = request.getParameter("txtTelephone");
			String address = request.getParameter("txtAddress");
			
			obj = new User();
			obj.setName(name);
			obj.setTelephone(telephone);
			obj.setAddress(address);
			
		}catch (Exception e) {
			throw new IOException("Parameter error ! " + e.getMessage());
		}
		
		UserDao userDao = new UserDao();
		userDao.insert(obj);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/insert.jsp");
		request.setAttribute("user", obj);
		dispatcher.forward(request, response);
	}
}
