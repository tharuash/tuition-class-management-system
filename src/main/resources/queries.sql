-- Create users table
CREATE TABLE users(
	id INT NOT NULL AUTO_INCREMENT,
	NAME VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	mobile VARCHAR(255),
	PASSWORD VARCHAR(20) NOT NULL,
	role VARCHAR(20) NOT NULL,
	PRIMARY KEY(id),
	UNIQUE(email)
);

-- Insert initial user data
INSERT INTO `users`( `NAME`, `email`, `mobile`, `PASSWORD`, `role`) VALUES ( 'Test Student','student@email.com',null,'abc123','STUDENT' );
INSERT INTO `users`( `NAME`, `email`, `mobile`, `PASSWORD`, `role`) VALUES ( 'Test Teacher','teacher@email.com',12356,'xyz456','TEACHER' );
INSERT INTO `users`( `NAME`, `email`, `mobile`, `PASSWORD`, `role`) VALUES ( 'Test Admin','admin@email.com',4445567,'pqr789','ADMIN' );

SELECT * FROM users;