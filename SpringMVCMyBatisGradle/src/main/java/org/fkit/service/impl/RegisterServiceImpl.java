package org.fkit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.fkit.mapper.RegisterMapper;
import org.fkit.service.RegisterService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("RegisterService")
public class RegisterServiceImpl implements RegisterService {
	@Autowired
	private RegisterMapper registerMapper;
	@Override
	public void register(String loginname, String password, String psd,String username, String phone,String email) {
		// TODO Auto-generated method stub
		 registerMapper.insertuser(loginname, password, psd,username, phone,email);
	}

	
	


}
