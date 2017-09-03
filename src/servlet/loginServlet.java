package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /**
         * 先校验vcode
         * 从session里面取出来vcode的值
         * 得到输入的值
         * 比较两个值,如果两个只是一样的那么继续
         *      两个值不一样那么转发到login.jsp
         */

        String session_vcode = (String) request.getSession().getAttribute("session_vcode");
        String vcode = request.getParameter("vcode");
        // 比较两个值,如果不相同,转发
        if(!session_vcode.equalsIgnoreCase(vcode)){
            request.setAttribute("loginMsg","verificationCode error!please re-enter!");
            request.getRequestDispatcher("/session/login.jsp").forward(request,response);
            // 这里要有return 否则后面的代码还会执行
//            return;
        }

        // 处理中文问题
        request.setCharacterEncoding("utf-8");
        // 得到用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        // 校验用户名和密码
        // 如果用户名密码匹配
        if(username.equalsIgnoreCase("summering")&&password.equalsIgnoreCase("joah")){
            // 设置cookie
            Cookie cookie=new Cookie("username","summering");
            // 设置cookie 的存活时间
            cookie.setMaxAge(60*60*24);
            response.addCookie(cookie);
            // 把用户信息保存到session里面
            HttpSession session = request.getSession();
            session.setAttribute("username",username);
            session.setAttribute("password",password);
            // 重定向到成功页面
            response.sendRedirect("/session/success1.jsp");
        }else{
            // 保存错误信息到request域中
            request.setAttribute("loginMsg","Login failed!!Please check your username or password!");
            // 转发
            request.getRequestDispatcher("/session/login.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
