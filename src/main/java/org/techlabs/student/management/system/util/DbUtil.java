package org.techlabs.student.management.system.util;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {

    private static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
    private static final String DATABASE_URL = "jdbc:mysql://<server>:3306/<database_name>";
    private static final String USERNAME = "";
    private static final String PASSWORD = "";
    private static final Logger logger = LogManager.getLogger(DbUtil.class);
    private static Connection connection = null;

    private DbUtil(){}

    public static synchronized Connection getConnection(){
        if(connection == null){
            try {
                Class.forName(DRIVER_CLASS);
                if(connection == null) connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
                logger.debug("Database Connection Established");
            } catch (SQLException | ClassNotFoundException ex) {
                logger.error(ex.getMessage());
            }
        }

        return connection;
    }
}
