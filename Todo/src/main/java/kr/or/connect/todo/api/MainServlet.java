package kr.or.connect.todo.api;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

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

			List<TodoDto> list = dao.getTodos("TODO");
			List<TodoDto> list2 = dao.getTodos("DOING");
			List<TodoDto> list3 = dao.getTodos("DONE");

			ObjectMapper objectMapper = new ObjectMapper();
			String json1 = objectMapper.writeValueAsString(list);
			String json2 = objectMapper.writeValueAsString(list2);
			String json3 = objectMapper.writeValueAsString(list3);
			
			StringTokenizer toc = new StringTokenizer(json1,"}");
			int todocount = toc.countTokens()-1;
			StringTokenizer doingc = new StringTokenizer(json2,"}");
			int doingcount = doingc.countTokens()-1;
			StringTokenizer donec = new StringTokenizer(json3,"}");
			int donecount = donec.countTokens()-1;
			
			request.setAttribute("todocount", todocount);
			request.setAttribute("doingcount", doingcount);
			request.setAttribute("donecount", donecount);
			request.setAttribute("TodoResult", json1);
			request.setAttribute("DoingResult", json2);
			request.setAttribute("DoneResult", json3);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/main.jsp");
	        requestDispatcher.forward(request, response);
			
	}

}
