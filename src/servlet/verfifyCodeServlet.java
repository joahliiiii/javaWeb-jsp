package servlet;

import verfifyCode.myVerfifyCode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

@WebServlet(name = "verfifyCodeServlet")
public class verfifyCodeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        myVerfifyCode verfifyCode= new myVerfifyCode();
        BufferedImage bufferedImage=verfifyCode.getImage(4,6,0.07F);
        // 得到verfify code的文本并保存到session
        request.getSession().setAttribute("session_vcode",verfifyCode.stringBuffer.toString());
        // 把图片响应给客户端
        verfifyCode.out(bufferedImage,response.getOutputStream());

     }
}
