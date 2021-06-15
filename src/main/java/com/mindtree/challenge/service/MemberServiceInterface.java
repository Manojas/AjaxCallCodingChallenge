package com.mindtree.challenge.service;

import java.util.List;

import com.mindtree.challenge.model.Member;

public interface MemberServiceInterface {
public boolean checkEmail(String email);
public int storeMemberDetails(Member member);
public List<Member> getMembersDetails();

}
