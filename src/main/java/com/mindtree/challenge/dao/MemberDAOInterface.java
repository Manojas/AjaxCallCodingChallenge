package com.mindtree.challenge.dao;

import java.util.List;

import com.mindtree.challenge.model.Member;

public interface MemberDAOInterface {
public int insertIntoMember(Member member);

public boolean checkEmailFromDatabase(String email);

public List<Member> retriveMembersDetails();

}
