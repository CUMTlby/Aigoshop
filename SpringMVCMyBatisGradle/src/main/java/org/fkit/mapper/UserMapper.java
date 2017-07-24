package org.fkit.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.User;

/**
 * UserMapper接口
 * */
public interface UserMapper {
	
	/**
	 * 根据登录名和密码查询用户
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	@Select("select * from tb_user where loginname = #{loginname} and password = #{password}")
	User findWithLoginnameAndPassword(@Param("loginname")String loginname,
			@Param("password") String password);
	
	@Select("update tb_user set password=#{rewpassword},psd=#{rewpsd} where loginname=#{loginname}")
	User updateuser(@Param("loginname")String loginname,@Param("rewpassword")String rewpassword,@Param("rewpsd")String rewpsd);
	
	@Select("select * from tb_user where loginname = #{loginname} and email = #{email}")
	User findWithLoginnameAndEmail(@Param("loginname")String loginname,
			@Param("email") String email);
	
	
}

