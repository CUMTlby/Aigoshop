package org.fkit.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface RegisterMapper {
	@Insert("insert into tb_user(loginname,password,psd,username,phone,email) values(#{loginname},#{password},#{psd},#{username},#{phone},#{email})")
	void insertuser(@Param("loginname")String loginname,@Param("password")String password,@Param("psd")String psd,@Param("username")String username,
			@Param("phone")String phone, @Param("email")String email);
	

	}


