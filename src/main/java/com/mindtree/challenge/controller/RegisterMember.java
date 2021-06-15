package com.mindtree.challenge.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mindtree.challenge.model.Member;
import com.mindtree.challenge.service.MemberServiceImpl;
import com.mindtree.challenge.service.MemberServiceInterface;

/**
 * Servlet implementation class RegisterMember
 */
public class RegisterMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberServiceInterface msi = new MemberServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterMember() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// String data = req.getParameter("data");
		// System.out.println(data);

		// JSONParser parser = new JSONParser();
		// JSONObject object = null;
		
		String message = "";
		//  res.sendRedirect("success.html");
		List<Member> members = new ArrayList<Member>();
		
		try {

			// object = (JSONObject) parser.parse(data);

			InputStreamReader isr = new InputStreamReader(req.getInputStream());
			BufferedReader br = new BufferedReader(isr);
			String data = br.readLine();
			String array[] = data.split(",");

			// System.out.println(data);
//			String email = (String) object.get("email");
//			String fname = (String) object.get("fname");
//			String lname = (String) object.get("lname");
//			String location = (String) object.get("location");
//			String dob = (String) object.get("dob");
//			int experience = Integer.parseInt((String) object.get("experience"));
//			String mid = (String) object.get("mid");
			String email = array[0];
			String fname = array[1];
			String lname = array[2];
			String location = array[3];
			String dob = array[4];
			int experience = Integer.parseInt(array[5]);
			String mid = array[6];
			Member member = new Member(email, fname, lname, location, dob, experience, mid);
			
			members.add(member);
			// List<Member> mlist=new ArrayList<Member>();
			// mlist.add(member);
			try {
				boolean flag=msi.checkEmail(email);
				if (flag) {
					message = "Member is already registered";
					    
				} else {
					int count=msi.storeMemberDetails(member);
					
					message = "Member registered successfully";
				}
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				System.out.println(e1.getMessage());
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

		}
		for(Member member:members)
		{
			System.out.println(member);
		}
		
		res.setContentType("text/plain");
       res.getWriter().write(message);
	}

}
