package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.appointmentDao;
import com.db.DBConnect;
import com.entity.Appointment;
@WebServlet("/appointmentsever")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userId = Integer.parseInt(req.getParameter("userid"));
		String fullname = req.getParameter("fullname");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");
		String appoint_date = req.getParameter("appoint_date");
		String email = req.getParameter("email");
		String phono = req.getParameter("phono");
		String diseases = req.getParameter("dieseases");
		int doctorId = Integer.parseInt(req.getParameter("doctorId"));
		String address = req.getParameter("address");
		
		
		Appointment ap = new Appointment(userId, fullname, gender, age, appoint_date, email, phono, diseases, doctorId, address, "pending");
		appointmentDao  dao = new appointmentDao (DBConnect.getconn());
		HttpSession session = req.getSession();
		
		if (dao.addAppointment(ap)) {
			session.setAttribute("sucMsg", "Appointment Successfully ");
			resp.sendRedirect("userappointment.jsp");
		} else {
			session.setAttribute("errorMsg","Something wrong on server");
			resp.sendRedirect("userappointment.jsp");
		}
		
	}

}
