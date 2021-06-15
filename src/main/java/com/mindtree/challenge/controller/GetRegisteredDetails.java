package com.mindtree.challenge.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mindtree.challenge.model.Member;
import com.mindtree.challenge.service.MemberServiceImpl;
import com.mindtree.challenge.service.MemberServiceInterface;

/**
 * Servlet implementation class GetRegisteredDetails
 */
public class GetRegisteredDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberServiceInterface msi = new MemberServiceImpl(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetRegisteredDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Member> ls2=msi.getMembersDetails();
		req.setAttribute("Members",ls2);
		RequestDispatcher rd= req.getRequestDispatcher("Registered.jsp");
		rd.forward(req,res);
	}

}
