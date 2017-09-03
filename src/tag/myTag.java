/*
 * Copyright (c) 2017. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 */

package tag;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTag;
import java.io.IOException;

public class myTag implements SimpleTag {
    private PageContext pageContext;
    private JspFragment jspFragment;
    @Override
    /***
     * 所有的setXxxx方法都会在 doTag之前被tomcat调用
     * 所以 doTag 里面就可以使用tomcat传递过来的参数
     */
    public void doTag() throws JspException, IOException {
        pageContext.getOut().print("hello tag;");
    }

    @Override
    public void setParent(JspTag jspTag) {

    }

    @Override
    public JspTag getParent() {
        return null;
    }

    @Override
    public void setJspContext(JspContext jspContext) {
        this.pageContext= (PageContext) jspContext;
    }

    @Override
    public void setJspBody(JspFragment jspFragment) {
        this.jspFragment=jspFragment;
    }
}
