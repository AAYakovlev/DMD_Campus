package sample;


import org.postgresql.util.PSQLException;

import javax.sql.DataSource;
import java.sql.*;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Calendar;
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
//                int studentID = personResultSet.getInt(8);
                int scholarship = personResultSet.getInt(8);
                result.add(new Student(id, firstName, middleName, lastName, dateOfBirth, gender, documentId, scholarship));
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
//                int empID = personResultSet.getInt(9);
                int salary = personResultSet.getInt(9);
                String role = personResultSet.getString(10);
                result.add(new Employee(id, firstName, middleName, lastName, dateOfBirth, gender, documentId, salary, role));
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

    public List<BalancePerson> getBalances(String query) throws SQLException {
        List<BalancePerson> result = new ArrayList<>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery(
                     query)) {
            while (personResultSet.next()) {
                int id = personResultSet.getInt(1);
                String fName = personResultSet.getString(2);
                String lName = personResultSet.getString(3);
                int balance = personResultSet.getInt(4);
                result.add(new BalancePerson(id, fName, lName, balance));
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
                     "SELECT gp.first_name, gp.family_name, hp.first_name, hp.family_name, g2p.date_time_start, g2p.date_time_end, g2p.guest_person_id, hp.person_id FROM person gp\n" +
                             "  NATURAL RIGHT JOIN guest g\n" +
                             "  JOIN guest_to_person g2p ON g.person_id = g2p.guest_person_id\n" +
                             "  JOIN person hp ON g2p.person_id = hp.person_id")) {
            while (personResultSet.next()) {
                String firstName = personResultSet.getString(1);
                String lastName = personResultSet.getString(2);
                String hostFirstName = personResultSet.getString(3);
                String hostLastName = personResultSet.getString(4);
                String start = personResultSet.getString(5);
                String end = personResultSet.getString(6);
                int guestID = personResultSet.getInt(7);
                int hostID = personResultSet.getInt(8);
                result.add(new Guest(firstName, lastName, hostFirstName, hostLastName, start, end, hostID, guestID));
            }
            personResultSet.close();
            stmt.close();
        }
        return result;
    }

    public List<Guest> getLateGuests() throws SQLException {
        List<Guest> result = new ArrayList<>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery(
                     "SELECT gh.guest_name, gh.guest_family_name, gh.host_first_name, gh.host_family_name," +
                             " gh.stay_time, gh.guest_person_id, gh.host_person_id" +
                             " FROM guest_control_with_host AS gh;")) {
            while (personResultSet.next()) {
                String firstName = personResultSet.getString(1);
                String lastName = personResultSet.getString(2);
                String hostFirstName = personResultSet.getString(3);
                String hostLastName = personResultSet.getString(4);
                String start = personResultSet.getString(5);
                int guestID = personResultSet.getInt(6);
                int hostID = personResultSet.getInt(7);
                result.add(new Guest(firstName, lastName, hostFirstName, hostLastName, start, "", hostID, guestID));
            }
            personResultSet.close();
            stmt.close();
        }
        return result;
    }

    public List<Documents> getOutdatedDocs() throws SQLException {
        List<Documents> result = new ArrayList<>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery(
                     "SELECT first_name, family_name, overdue_for, type_name FROM outdated_documents_of_students_and_employee")) {
            while (personResultSet.next()) {
                String firstName = personResultSet.getString(1);
                String lastName = personResultSet.getString(2);
                String overdueFor = personResultSet.getString(3);
                String docType = personResultSet.getString(4);
                result.add(new Documents(firstName, lastName, overdueFor, docType));
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

    public List<PersonInside> getPersonsInsideNow() throws SQLException {
        List<PersonInside> result = new ArrayList<>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery("SELECT first_name, family_name, building_id, date_time FROM persons_inside_campus_now")) {
            while (personResultSet.next()) {
                String firstName = personResultSet.getString(1);
                String lastName = personResultSet.getString(2);
                int buildingId = personResultSet.getInt(3);
                String dateTime = personResultSet.getTimestamp(4).toString();
                result.add(new PersonInside(firstName, lastName, buildingId, dateTime));
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

    public List<PersonInApartment> getAllStudentsInApartments() throws SQLException {
        List<PersonInApartment> result = new ArrayList<PersonInApartment>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery("SELECT p.person_id, p.first_name, p.middle_name, p.family_name," +
                     " p.date_of_birth, p.gender, p.main_document_id, l.apartment_number," +
                     " l.building_id, l.date_time_start FROM student NATURAL JOIN person AS p NATURAL LEFT JOIN lives_in AS l")) {
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

    public List<PersonInApartment> getAllEmployeesInApartments() throws SQLException {
        List<PersonInApartment> result = new ArrayList<PersonInApartment>();
        try (Connection connection = getConnection();
             Statement stmt = connection.createStatement();
             ResultSet personResultSet = stmt.executeQuery("SELECT p.person_id, p.first_name, p.middle_name, p.family_name," +
                     "p.date_of_birth, p.gender, p.main_document_id, l.apartment_number," +
                     "l.building_id, l.date_time_start FROM employee NATURAL JOIN person AS p  NATURAL LEFT JOIN lives_in AS l")) {
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

    public int delete_student(Integer id) throws SQLException {
        int deleted;
        try (Connection connection = getConnection();
             PreparedStatement stmt = connection.prepareStatement("DELETE FROM student WHERE person_id= ?")) {
            stmt.setInt(1, id);
            deleted = stmt.executeUpdate();
            stmt.close();
        }
        return deleted;
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

    public void add_person_to_apt(int personId, int apt_num, int building_id, Timestamp start_date) throws SQLException {
        try (Connection connection = getConnection();
             CallableStatement statement = connection.prepareCall(" { call add_person_into_appartment( ?, ?, ?, CAST(? AS TIMESTAMP) ) } ");) {
            statement.setInt(1, personId);
            statement.setInt(2, apt_num);
            statement.setInt(3, building_id);
            statement.setTimestamp(4, start_date);
            statement.execute();
            statement.close();
            connection.close();
        }
    }

    public SQLWarning add_guest(String hostfName, String hostlName, Timestamp hostDOB, String fname, String mname, String lname, String gender, Timestamp dob, String doc_path) throws SQLException {
        int hostID;
        boolean res;
        try (Connection connection = getConnection();
             PreparedStatement stmt = connection.prepareStatement("SELECT p.person_id FROM person  AS p WHERE p.first_name LIKE ? AND p.family_name LIKE ? AND p.date_of_birth = CAST(? AS TIMESTAMP)")) {
            stmt.setString(1, hostfName);
            stmt.setString(2, hostlName);
            stmt.setTimestamp(3, hostDOB);
            ResultSet result = stmt.executeQuery();
            result.next();
            hostID = result.getInt(1);
        } catch (PSQLException e) {
            throw new SQLException("Host not found");
        }
        try (Connection connection = getConnection();
             CallableStatement statement = connection.prepareCall(" { ? = call create_guest_person( ?, ?, ?, ?, CAST(? AS TIMESTAMP), CAST(? AS TIMESTAMP), ?, ?, ? ) } ");) {
            statement.setString(2, fname);
            statement.setString(3, mname);
            statement.setString(4, lname);
            statement.setString(5, gender);
            statement.setTimestamp(6, dob);
            Calendar cal = Calendar.getInstance();
            cal.add(Calendar.YEAR, 1);
            statement.setTimestamp(7, Timestamp.from(Instant.ofEpochMilli(cal.getTimeInMillis())));
            statement.setInt(8, 1);
            statement.setString(9, doc_path);
            statement.setInt(10, hostID);
            statement.registerOutParameter(1, Types.BOOLEAN);
            statement.execute();
            res = statement.getBoolean(1);
            SQLWarning warnings = statement.getWarnings();
            statement.close();
            connection.close();
            if (!res)
                return warnings;
        }
        return null;
    }

    public SQLWarning guestLeaving(int guestId, int personId) throws SQLException {
        boolean res;
        try (Connection connection = getConnection();
             CallableStatement statement = connection.prepareCall(" { ? = call guest_left_from_person( ?, ? ) } ");) {
            statement.setInt(2, guestId);
            statement.setInt(3, personId);
            statement.registerOutParameter(1, Types.BOOLEAN);
            statement.execute();
            res = statement.getBoolean(1);
            SQLWarning warnings = statement.getWarnings();
            statement.close();
            connection.close();
            if (!res)
                return warnings;
        }
        return null;
    }
}
