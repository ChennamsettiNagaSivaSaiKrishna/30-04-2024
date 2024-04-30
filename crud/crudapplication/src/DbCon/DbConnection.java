package DbCon;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	Connection con;

	public Connection connect() {
		try {
			Class.forName("org.postgres.Driver");
			con = DriverManager.getConnection("jdbc:postgresql://192.168.110.48/postgres", "plf_training_admin",
					"pff123");
			System.out.println("Connection Established");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
