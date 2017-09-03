package tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.SkipPageException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class tag4 extends SimpleTagSupport {
    @Override
    public void doTag() throws JspException, IOException {
        this.getJspContext().getOut().print("SkipPageException ");
        throw new SkipPageException();
    }
}
