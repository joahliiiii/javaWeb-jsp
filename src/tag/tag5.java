package tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class tag5 extends SimpleTagSupport {
    private boolean test;

   /* public boolean isTest() {
        return test;
    }*/

    public void setTest(boolean test) {
        this.test = test;
    }

    @Override
    public void doTag() throws JspException, IOException {
        if(test){
            JspWriter out = this.getJspContext().getOut();
            // 传递的是null 表示使用的就是当前页面的流
            getJspBody().invoke(null);
        }
    }
}
