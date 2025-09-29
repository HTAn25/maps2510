package murach.survey;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SurveyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String firstName = request.getParameter("firstName");
        String lastName  = request.getParameter("lastName");
        String email     = request.getParameter("email");
        String birthDate = request.getParameter("birthDate");
        String source    = request.getParameter("source");
        String[] announcements = request.getParameterValues("announcements");
        String contact   = request.getParameter("contact");

        // Lưu vào request attribute
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("email", email);
        request.setAttribute("birthDate", birthDate);
        request.setAttribute("source", source);
        request.setAttribute("announcements", announcements);
        request.setAttribute("contact", contact);

        // Chuyển hướng sang trang thanks.jsp
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/thanks.jsp");
        dispatcher.forward(request, response);
    }
}
