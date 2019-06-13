package kr.or.connect.todo.api;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.connect.todo.dao.TodoDao;
import kr.or.connect.todo.dto.TodoDto;

/**
 * Servlet implementation class MainServlet
 */
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/json");

			TodoDao dao = new TodoDao();

			List<TodoDto> list = dao.getTodos();

			ObjectMapper objectMapper = new ObjectMapper();
			String json = objectMapper.writeValueAsString(list);

			
			request.setAttribute("result", json);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/main.jsp");
	        requestDispatcher.forward(request, response);
			
	}

}
