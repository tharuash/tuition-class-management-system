package org.techlabs.student.management.system.dao;

import org.techlabs.student.management.system.entity.User;

import java.util.Optional;

public interface UserDao {

    Optional<User> getUserByEmailAndPassword(String email, String password);
}
