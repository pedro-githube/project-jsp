package sp.senai.br.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import sp.senai.br.dao.UserDao;
import sp.senai.br.model.User;

@WebServlet("/users")
public class Users extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserDao obj = new UserDao();
		List<User> list = obj.findAll();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/list.jsp");
		request.setAttribute("list", list);
		dispatcher.forward(request, response);
	}
}
