package com.mindtree.challenge.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mindtree.challenge.model.Member;
import com.mindtree.challenge.utility.GetConnection;

public class MemberDAOImpl implements MemberDAOInterface {

	public int insertIntoMember(Member member) {
		// TODO Auto-generated method stub
		Connection con = GetConnection.getConnection();
		String query = "insert into member values(?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null;
		int count=0;
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getFname());
			pstmt.setString(3, member.getLname());
			pstmt.setString(4, member.getLocation());
			pstmt.setString(5, member.getDob());
			pstmt.setInt(6, member.getExperience());
			pstmt.setString(7, member.getMid());
			 count=pstmt.executeUpdate(); 
		System.out.println(count+"Inserted");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {

			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
				System.out.println("Connection failed");
			}

		}
		//return null;
		//return count;
		System.out.println(count);
		if(count==1)
		{
			return count;
		}
		else
		{
			return 0;
		}
	}

	public boolean checkEmailFromDatabase(String email) {
		// TODO Auto-generated method stub
//		boolean flag=false;
//		Connection con=GetConnection.getConnection();
//		String query="Select * from member where email=?";
//		PreparedStatement pstmt=null;
//		try {
//			pstmt=con.prepareStatement(query);
//			pstmt.setString(1, email);
//	       rs=pstmt.executeUpdate();
//		}
//		return flag;

		Connection con = null;
		PreparedStatement stmt = null;
		try {
			con = GetConnection.getConnection();
			String query = "select * from member where email=?";
			stmt = con.prepareStatement(query);
			stmt.setString(1, email);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println("SQL exception");
		} finally {
			if (con != null) {
				// con.close();
				GetConnection.closeConnection(con);
			}
			if (stmt != null) {
				GetConnection.closeConnection(stmt);
			}
		}
		return false;

	}

	public List<Member> retriveMembersDetails() {
		// TODO Auto-generated method stub
//		Connection con = GetConnection.getConnection();
//		PreparedStatement pt = null;
//		ResultSet rs = null;
//		String query = "select * from player where teamName=?";
//		try {
//			pt = con.prepareStatement(query);
//			pt.setString(1, team);
//
//			rs = pt.executeQuery();
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//		ArrayList<Player> pl = new ArrayList<Player>();
//		try {
//			while (rs.next()) {
//				pl.add(new Player(rs.getShort("playerId"), rs.getString("playerName"), rs.getShort("playerAge"),
//						rs.getString("playerGender"), rs.getString("teamName")));
//
//			}
			
			
			
		
		Connection con = GetConnection.getConnection();
		//Connection con = null;
		Statement st = null;
		ResultSet rs=null;
		String query = "select * from member";
		try {
			st = con.createStatement();
			 rs = st.executeQuery(query);
			 
		}catch (SQLException e) {
			System.out.println("SQL Exception");
		}
		List<Member> ls2 = new ArrayList<Member>();
		try {
			
			while (rs.next()) {
				Member member = new Member(rs.getString("email"), rs.getString("fname"), rs.getString("lname"),
						rs.getString("location"), rs.getString("dob"), rs.getInt("experience"), rs.getString("mid"));
				ls2.add(member);
			

			for (Member mem : ls2) {
				mem.toString();
			}
		}
		}catch (Exception e) {
			System.out.println("No data in database Exception");
		} finally {
			if (con != null) {
				// con.close();
				GetConnection.closeConnection(con);
			}
			if (st != null) {
				GetConnection.closeConnection(st);
			}
		}
		return ls2;
	}

}
