package tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class tag2 extends SimpleTagSupport {
    @Override
    public void doTag() throws JspException, IOException {
        this.getJspContext().getOut().print("hello SimpleTagSupport! ");
    }
}
