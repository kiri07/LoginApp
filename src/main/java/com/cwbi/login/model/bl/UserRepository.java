package com.cwbi.login.model.bl;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;

import com.cwbi.login.model.entities.Registereduser;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

@Component
public interface UserRepository extends CrudRepository<Registereduser, Integer> {
	public Registereduser findByUsernameAndUserpassword(@Param("username") String username, @Param("userpassword") String userpassword);
}
