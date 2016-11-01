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
