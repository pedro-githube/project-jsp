package sp.senai.br.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sp.senai.br.dao.UserDao;

@WebServlet("/delete-user")
public class DeleteUser extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String txtId = request.getParameter("txtId");
		int id = Integer.parseInt(txtId);
		
		UserDao userDao = new UserDao();
		userDao.deleteById(id);
		response.sendRedirect("/program/users");
	}
}
