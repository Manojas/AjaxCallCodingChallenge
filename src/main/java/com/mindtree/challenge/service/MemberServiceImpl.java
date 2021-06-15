package com.mindtree.challenge.service;

import java.util.List;

import com.mindtree.challenge.dao.MemberDAOImpl;
import com.mindtree.challenge.dao.MemberDAOInterface;
import com.mindtree.challenge.model.Member;

public class MemberServiceImpl implements MemberServiceInterface{
MemberDAOInterface mdi=new MemberDAOImpl();

	public boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		boolean flag=mdi.checkEmailFromDatabase( email);
		return flag;
	}

	public int storeMemberDetails(Member member) {
		// TODO Auto-generated method stub
		int count=mdi.insertIntoMember(member);
		return count;
	}

	public List<Member> getMembersDetails() {
		// TODO Auto-generated method stub
		List<Member> ls2=mdi.retriveMembersDetails();
		return ls2;
	}

}
