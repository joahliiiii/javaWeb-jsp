package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "calculateServlet")
public class calculateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String s1=request.getParameter("number1");
       String s2=request.getParameter("number2");
       int num1=Integer.parseInt(s1);
       int num2=Integer.parseInt(s2);
       int sum=num1+num2;

       // 把结果保存到request域中
        request.setAttribute("result",sum);
        request.getRequestDispatcher("/calculate/result.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
