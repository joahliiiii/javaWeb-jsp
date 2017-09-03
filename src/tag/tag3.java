package tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class tag3 extends SimpleTagSupport {
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = this.getJspContext().getOut();
        out.write("*********************<br>");
        this.getJspBody().invoke(out);
        out.write("<br>******************");
    }
}
