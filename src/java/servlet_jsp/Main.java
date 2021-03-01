package servlet_jsp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Main")
public class Main extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public Main() {
        super();
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("solve") != null) {
            ResultForm result = null;
            try {
                double x = Double.parseDouble(req.getParameter("x"));
                double a = Double.parseDouble(req.getParameter("a"));
                double b = Double.parseDouble(req.getParameter("b"));
                if (x >= 8) {
                    double y1 = ((a * a) + (4*x*x)+b);
                    double y2 = (2*x);
                    result = new ResultForm((y1 / y2));
                } else {
                    double y1 = (a * a);
                    double y2 = (2*x*x);
                    result = new ResultForm((y1 - y2));
                }
            } catch (Exception e) {
            }
            req.setAttribute("result", result);
            req.getRequestDispatcher("/resultform.jsp").forward(req, resp);
        }
    }
}