package org.techlabs.student.management.system.dao.impl;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.techlabs.student.management.system.dao.UserDao;
import org.techlabs.student.management.system.entity.User;
import org.techlabs.student.management.system.util.DbUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;

public class UserDaoImpl extends AbstractDaoImpl implements UserDao {

    private static final Logger logger = LogManager.getLogger(UserDaoImpl.class);

    public UserDaoImpl() {
        super(DbUtil.getConnection());
    }

    @Override
    public Optional<User> getUserByEmailAndPassword(String email, String password) {
        String sql = "SELECT id, email, role FROM users WHERE email =? AND password =? LIMIT 1";
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Optional<User> optionalUser = Optional.empty();
        try {
            preparedStatement = super.getConnection().prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                User user = new User(resultSet.getLong("id"),
                        "",
                        resultSet.getString("email"),
                        "",
                        "",
                        resultSet.getString("role") );
                optionalUser = Optional.of(user);
                logger.debug("User found for email {}", email);
            } else {
                logger.debug("No user found for email {}", email);
            }
        } catch (SQLException ex) {
            logger.error(ex.getMessage());
        } finally {
            closeResources(preparedStatement, resultSet);
        }
        return optionalUser;
    }
}
