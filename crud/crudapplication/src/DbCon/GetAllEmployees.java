package DbCon;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.ArrayList;

import Model.Employee;

public class GetAllEmployees {
	public ArrayList<Employee> getAllEmp() throws Exception {
		DbConnection dc = new DbConnection();
		Connection con = dc.connect();
		ArrayList<Employee> are = new ArrayList<>();
		CallableStatement cs = con.prepareCall("{call getAllEmp()}");

		return null;
	}
}
