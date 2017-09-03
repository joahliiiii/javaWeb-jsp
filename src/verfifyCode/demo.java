package verfifyCode;

import org.junit.Test;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import java.io.IOException;

public class demo {
    /**
     * 创建图片缓冲区并设置图片大小和颜色标准
     * 得到图片的绘制环境
     * 画图
     * 保存起来
     */
    @Test
    public void function1() throws IOException {
        // 创建图片缓冲区
        BufferedImage bufferedImage=new BufferedImage(70,35,BufferedImage.TYPE_INT_RGB);
        // 得到绘画环境
        Graphics2D graphics = (Graphics2D) bufferedImage.getGraphics();
        // 设置背景颜色
        graphics.setColor(Color.green);
        graphics.fillRect(0,0,69,34);
        // 写如文字
        String string="123456789qwertyupasdfghjkzxvbnm";
        graphics.setColor(Color.black);
        graphics.drawString("Joah",12,10);

        ImageIO.write(bufferedImage,"JPEG",new FileOutputStream("/home/joah/图片/VCODE.jpg"));

    }
}
