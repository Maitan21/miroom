package com.miroom.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miroom.vo.CustomUserDetails;

@Repository("userAuthDAO")
public class UserAuthDAO {
    
	@Autowired
	private SqlSessionTemplate sqlSession;

	public CustomUserDetails getUserById(String username) {
		return sqlSession.selectOne("user.selectUserById", username);
	}
 
}
