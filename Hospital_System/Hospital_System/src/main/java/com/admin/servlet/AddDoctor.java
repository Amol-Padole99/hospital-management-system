package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;
@WebServlet("/adddoctor")
public class AddDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String fullname = req.getParameter("fullname");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");
			String spec = req.getParameter("spec");
			String email= req.getParameter("email");
			String mobno = req.getParameter("mobno");
			String password = req.getParameter("password");
			
			
			Doctor d = new Doctor(fullname, dob, qualification, spec, mobno, password);
			DoctorDao dao = new DoctorDao(DBConnect.getconn());
			HttpSession session = req.getSession();
			
			if(dao.registerDoctor(d)) {
				
				session.setAttribute("sucMsg", "Doctor Added Succesfully..");
				resp.sendRedirect("admin/Doctor.jsp");
				
				
			}else {
				session.setAttribute("errorMsg", "Something Wrong on server..");
				resp.sendRedirect("admin/Doctor.jsp");
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
