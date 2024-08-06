package com.mvcproj.service;

import java.util.Optional;

import com.mvcproj.entity.UserRegistration;

public interface IUserRegistrationService {
		public String saveData(UserRegistration u);
		public Iterable<UserRegistration> getAllData();
		public String verify(String userName,String password);
		public Optional<UserRegistration> getUserById(int id);
		public String updateUser(UserRegistration user);
		public String deleteById(int id);
	}

