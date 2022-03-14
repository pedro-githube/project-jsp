package sp.senai.br.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sp.senai.br.dao.UserDao;
import sp.senai.br.model.User;

@WebServlet("/update-user")
public class UpdateUser extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("txtId"));
		String name = request.getParameter("txtName");
		String telephone = request.getParameter("txtTelephone");
		String address = request.getParameter("txtAddress");
		
		User obj = new User();
		obj.setId(id);
		obj.setName(name);
		obj.setTelephone(telephone);
		obj.setAddress(address);
		
		UserDao userDao = new UserDao();
		
		if (userDao.update(obj)) {
			response.sendRedirect("/program/users");
		} else {
			System.out.print(obj.getId());
			response.sendRedirect("/program/user?txtId=" + id);
		}
	}

}
