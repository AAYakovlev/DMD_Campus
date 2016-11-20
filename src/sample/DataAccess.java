package sample;


import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DataAccess {

    private static DataSource dataSource = null;

    public DataAccess(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    public List<Student> getAllStudents() throws SQLException {
        List<Student> result = new ArrayList<Student>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery("SELECT * FROM person NATURAL RIGHT JOIN student")) {
            while (personResultSet.next()) {
                int id = personResultSet.getInt(1);
                String firstName = personResultSet.getString(2);
                String middleName = personResultSet.getString(3);
                String lastName = personResultSet.getString(4);
                String dateOfBirth = personResultSet.getDate(5).toString();
                String gender = personResultSet.getString(6);
                int documentId = personResultSet.getInt(7);
                int studentID = personResultSet.getInt(8);
                int scholarship = personResultSet.getInt(9);
                result.add(new Student(id, firstName, middleName, lastName, dateOfBirth, gender, documentId, studentID, scholarship));
            }
            personResultSet.close();
            stmt.close();
        }
        return result;
    }

    public List<Employee> getAllEmployees() throws SQLException {
        List<Employee> result = new ArrayList<Employee>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery("SELECT * FROM person NATURAL RIGHT JOIN employee NATURAL RIGHT JOIN employee_role")) {
            while (personResultSet.next()) {
                int id = personResultSet.getInt(2);
                String firstName = personResultSet.getString(3);
                String middleName = personResultSet.getString(4);
                String lastName = personResultSet.getString(5);
                String dateOfBirth = personResultSet.getDate(6).toString();
                String gender = personResultSet.getString(7);
                int documentId = personResultSet.getInt(8);
                int empID = personResultSet.getInt(9);
                int salary = personResultSet.getInt(10);
                String role = personResultSet.getString(11);
                result.add(new Employee(id, firstName, middleName, lastName, dateOfBirth, gender, documentId, empID, salary, role));
            }
            personResultSet.close();
            stmt.close();
        }
        return result;
    }

    public List<Student> getStudentsView(String query) throws SQLException {
        List<Student> result = new ArrayList<Student>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
//             ResultSet personResultSet = stmt.executeQuery("SELECT * FROM students_without_apartment")) {
             ResultSet personResultSet = stmt.executeQuery(query)) {
            while (personResultSet.next()) {
                int id = personResultSet.getInt(1);
                String firstName = personResultSet.getString(2);
                String middleName = personResultSet.getString(3);
                String lastName = personResultSet.getString(4);
                String dateOfBirth = personResultSet.getDate(5).toString();
                String gender = personResultSet.getString(6);
                result.add(new Student(id, firstName, middleName, lastName, dateOfBirth, gender));
            }
            personResultSet.close();
            stmt.close();
        }
        return result;
    }

    public List<Apartments> getApartments(String query) throws SQLException {
        List<Apartments> result = new ArrayList<>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery(
                     query)) {
            while (personResultSet.next()) {
                int occupiedBeds = personResultSet.getInt(1);
                int aptNumber = personResultSet.getInt(2);
                int buildingId = personResultSet.getInt(3);
                int beds = personResultSet.getInt(4);
                int freeBeds = personResultSet.getInt(5);
                result.add(new Apartments(occupiedBeds, aptNumber, buildingId, beds, freeBeds));
            }
            personResultSet.close();
            stmt.close();
        }
        return result;
    }

    public List<Guest> getAllGuests() throws SQLException {
        List<Guest> result = new ArrayList<>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery(
                     "SELECT gp.first_name, gp.family_name, hp.first_name, hp.family_name, g2p.date_time_start, g2p.date_time_end FROM person gp\n" +
                     "  NATURAL RIGHT JOIN guest g\n" +
                     "  JOIN guest_to_person g2p ON g.guest_id = g2p.guest_id\n" +
                     "  JOIN person hp ON g2p.person_id = hp.person_id")) {
            while (personResultSet.next()) {
                String firstName = personResultSet.getString(1);
                String lastName = personResultSet.getString(2);
                String hostFirstName = personResultSet.getString(3);
                String hostLastName = personResultSet.getString(4);
                String start = personResultSet.getString(5);
                String end = personResultSet.getString(6);
                result.add(new Guest(firstName, lastName, hostFirstName, hostLastName, start, end));
            }
            personResultSet.close();
            stmt.close();
        }
        return result;
    }

    public List<Person> getAllPersons() throws SQLException {
        List<Person> result = new ArrayList<Person>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery("SELECT * FROM person")) {
            while (personResultSet.next()) {
                int id = personResultSet.getInt(1);
                String firstName = personResultSet.getString(2);
                String middleName = personResultSet.getString(3);
                String lastName = personResultSet.getString(4);
                String dateOfBirth = personResultSet.getDate(5).toString();
                String gender = personResultSet.getString(6);
                int documentId = personResultSet.getInt(7);
                result.add(new Person(id, firstName, middleName, lastName, dateOfBirth, gender, documentId));
            }
            personResultSet.close();
            stmt.close();
        }
        return result;
    }

    public List<PersonInApartment> getAllPersonsInApartments() throws SQLException {
        List<PersonInApartment> result = new ArrayList<PersonInApartment>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery("SELECT * FROM person NATURAL LEFT JOIN lives_in")) {
            while (personResultSet.next()) {
                int id = personResultSet.getInt(1);
                String firstName = personResultSet.getString(2);
                String middleName = personResultSet.getString(3);
                String lastName = personResultSet.getString(4);
                String dateOfBirth = personResultSet.getDate(5).toString();
                String gender = personResultSet.getString(6);
                int documentId = personResultSet.getInt(7);
                int aptNum = personResultSet.getInt(8);
                int building = personResultSet.getInt(9);
                String startDate = personResultSet.getString(10);
                result.add(new PersonInApartment(id, firstName, middleName, lastName, dateOfBirth, gender, documentId, aptNum, building, startDate));
            }
            personResultSet.close();
            stmt.close();
        }
        return result;
    }

    public void add_student(String fname, String mname, String lname, String gender, Timestamp dob, String doc_path, Integer scholarship) throws SQLException {
        try (Connection connection = getConnection();
             CallableStatement statement = connection.prepareCall(" { call add_new_student( ?, ?, ?, ?, CAST(? AS TIMESTAMP), ?, ? ) } ");) {
            statement.setString(1, fname);
            statement.setString(2, mname);
            statement.setString(3, lname);
            statement.setString(4, gender);
            statement.setTimestamp(5, dob);
            statement.setString(6, doc_path);
            statement.setInt(7, scholarship);
            statement.execute();
            statement.close();
            connection.close();
        }
    }

    public void add_employee(String fname, String mname, String lname, String gender, Timestamp dob, Integer salary, String role, String doc_path) throws SQLException {
        try (Connection connection = getConnection();
             CallableStatement statement = connection.prepareCall(" { call add_new_employee( ?, ?, ?, ?, CAST(? AS TIMESTAMP), ?, ?, ? ) } ");) {
            statement.setString(1, fname);
            statement.setString(2, mname);
            statement.setString(3, lname);
            statement.setString(4, gender);
            statement.setTimestamp(5, dob);
            statement.setInt(6, salary);
            statement.setString(7, role);
            statement.setString(8, doc_path);
            statement.execute();
            statement.close();
            connection.close();
        }
    }

    public void add_person_to_apt(String fname, String mname, String lname, int apt_num, int building_id, Timestamp start_date) throws SQLException {
        try (Connection connection = getConnection();
             CallableStatement statement = connection.prepareCall(" { call add_person_into_appartment( ?, ?, ?, ?, ?, CAST(? AS TIMESTAMP) ) } ");) {
            statement.setString(1, fname);
            statement.setString(2, mname);
            statement.setString(3, lname);
            statement.setInt(4, apt_num);
            statement.setInt(5, building_id);
            statement.setTimestamp(6, start_date);
            statement.execute();
            statement.close();
            connection.close();
        }
    }

//    public int add(Person person) throws SQLException {
//        int rowsUpdated;
//        try (Connection connection = getConnection();
//            PreparedStatement stmt = connection.prepareStatement(
//                    "INSERT INTO person (person_id, first_name, middle_name, family_name, date_of_birth, gender, main_document_id) VALUES (?,?,?)",
//                    Statement.RETURN_GENERATED_KEYS)) {
//            stmt.setString(1, person.getFirstName());
//            stmt.setString(2, person.getLastName());
//            stmt.setString(3, person.getCity());
//            rowsUpdated = stmt.executeUpdate();
//            try (ResultSet rs = stmt.getGeneratedKeys()) {
//                if (rs.next()) {
//                    person.setId(rs.getInt(1));
//                }
//            }
//        }
//        return rowsUpdated;
//    }
}
