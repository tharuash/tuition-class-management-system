package org.techlabs.student.management.system.dao.impl;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AbstractDaoImpl {

    private static final Logger logger = LogManager.getLogger(AbstractDaoImpl.class);
    private final Connection connection ;

    public AbstractDaoImpl(Connection connection) {
        this.connection = connection;
    }

    public Connection getConnection(){
        return connection;
    }

    public void closeResources(Statement statement, ResultSet resultSet){
        try {
            if(statement != null) statement.close();
            if(resultSet != null) resultSet.close();
            logger.debug("Successfully closed the database resources");
        } catch (SQLException ex) {
            logger.error(ex.getMessage());
        }
    }

}
