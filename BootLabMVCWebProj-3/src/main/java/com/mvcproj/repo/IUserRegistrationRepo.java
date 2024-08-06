package com.mvcproj.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mvcproj.entity.UserRegistration;

public interface IUserRegistrationRepo extends JpaRepository<UserRegistration, Integer> {

}
