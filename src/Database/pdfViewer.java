package Database;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.nio.file.Files;

@WebServlet("/pdfViewer")
public class pdfViewer extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("aaa");
    	File file = new File("/home/utkarsh/resume.pdf");
        response.setHeader("Content-Type", getServletContext().getMimeType(file.getName()));
        response.setHeader("Content-Length", String.valueOf(file.length()));
        response.setHeader("Content-Disposition", "inline; filename=\"resume.pdf\"");
        Files.copy(file.toPath(), response.getOutputStream());
    }
}
