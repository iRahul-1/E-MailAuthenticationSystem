package com.mvcproj.service;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mvcproj.entity.UserRegistration;
import com.mvcproj.repo.IUserRegistrationRepo;
@Service
public class UserRegistrationServiceImple implements IUserRegistrationService {
	@Autowired
	private IUserRegistrationRepo userRepo;

	@Override
	public String saveData(UserRegistration u) {
		userRepo.save(u);
		return "Data Saved";
	}
	@Override
	public String verify(String userName, String password) {
		
		return "Successfull";
	}
	@Override
	public Iterable<UserRegistration> getAllData() {
		return userRepo.findAll();
	} 
	@Override
	public Optional<UserRegistration> getUserById(int id) {
		
		return userRepo.findById(id);
	}
	@Override
	public String updateUser(UserRegistration user) {
		userRepo.save(user);
		return "User updated Successfully";
	}
	@Override
	public String deleteById(int id) {
		userRepo.deleteById(id);
		return "deleted";
	}
}

