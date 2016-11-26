package sample;

import com.sun.tools.corba.se.idl.constExpr.Times;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.TextFieldTableCell;
import javafx.util.StringConverter;
import javafx.util.converter.IntegerStringConverter;

import javax.print.Doc;
import java.net.URL;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Collections;
import java.util.List;
import java.util.ResourceBundle;

public class Controller implements Initializable {

    private DataAccess dataAccess;
    private ObservableList<PersonInApartment> personInApartmentCollection;

    public Controller(DataAccess dataAccess) {
        this.dataAccess = dataAccess;
    }

    @FXML
    TableView<Guest> tableViewGuests;
    @FXML
    TableColumn<Guest, String> stayTimeColumn;
    @FXML
    TextField hostFirstNameFieldGuests;
    @FXML
    TextField hostLastNameFieldGuests;
    @FXML
    TextField hostDOBFieldGuests;
    @FXML
    TextField firstNameFieldGuests;
    @FXML
    TextField middleNameFieldGuests;
    @FXML
    TextField lastNameFieldGuests;
    @FXML
    TextField genderFieldGuests;
    @FXML
    TextField dobFieldGuests;
    @FXML
    TextField documentFieldGuests;
    @FXML
    TextField arriveFieldGuests;

    @FXML
    TableView tableViewDocs;


    @FXML
    TableView tableViewAttendance;

    @FXML
    TableView tableViewTenants;
    @FXML
    TableColumn<PersonInApartment, Integer> apartmentNumberTenants;
    @FXML
    TableColumn<PersonInApartment, Integer> buildingTenants;

    @FXML
    TableView tableViewStudents;
    @FXML
    TextField firstNameField;
    @FXML
    TextField middleNameField;
    @FXML
    TextField lastNameField;
    @FXML
    TextField genderField;
    @FXML
    TextField dobField;
    @FXML
    TextField scholarshipField;
    @FXML
    TextField documentField;

    @FXML
    TableView tableViewEmps;
    @FXML
    TextField firstNameFieldEmp;
    @FXML
    TextField middleNameFieldEmp;
    @FXML
    TextField lastNameFieldEmp;
    @FXML
    TextField genderFieldEmp;
    @FXML
    TextField dobFieldEmp;
    @FXML
    TextField salaryFieldEmp;
    @FXML
    TextField documentFieldEmp;
    @FXML
    TextField roleFieldEmp;

    @FXML
    TableView tableAptBeds;

    @FXML
    TableView tableBalance;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        tableViewTenants.setEditable(true);
        apartmentNumberTenants.setCellFactory(TextFieldTableCell.<PersonInApartment, Integer>forTableColumn(new IntegerStringConverter()));
        buildingTenants.setCellFactory(TextFieldTableCell.<PersonInApartment, Integer>forTableColumn(new IntegerStringConverter()));
        showAllStudents(null);
        showAllEmployees(null);
        showAllGuests(null);
        showAllPersonsInApartments(null);
        showRentalFee(null);
        showOutdatedDocs(null);
        showPersonsInsideNow(null);
        fillAptTable("SELECT * FROM apartment_occupation ORDER BY beds_occupied DESC");
    }

    public void showAllGuests(ActionEvent actionEvent) {
        try {
            stayTimeColumn.setText("Start time");
            List<Guest> guests = dataAccess.getAllGuests();
            ObservableList<Guest> guestsCollection = FXCollections.observableArrayList(guests);
            tableViewGuests.setItems(guestsCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showLateGuests(ActionEvent actionEvent) {
        try {
            stayTimeColumn.setText("Stay time");
            List<Guest> guests = dataAccess.getLateGuests();
            ObservableList<Guest> guestsCollection = FXCollections.observableArrayList(guests);
            tableViewGuests.setItems(guestsCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showAllStudents(ActionEvent actionEvent) {
        try {
            List<Student> students = dataAccess.getAllStudents();
            ObservableList<Student> personsCollection = FXCollections.observableArrayList(students);
            tableViewStudents.setItems(personsCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showAllPersonsInApartments(ActionEvent actionEvent) {
        try {
            List<PersonInApartment> persons = dataAccess.getAllPersonsInApartments();
            personInApartmentCollection = FXCollections.observableArrayList(persons);
            tableViewTenants.setItems(personInApartmentCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showAllStudentsInApartments(ActionEvent actionEvent) {
        try {
            List<PersonInApartment> persons = dataAccess.getAllStudentsInApartments();
            personInApartmentCollection = FXCollections.observableArrayList(persons);
            tableViewTenants.setItems(personInApartmentCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showAllEmployeesInApartments(ActionEvent actionEvent) {
        try {
            List<PersonInApartment> persons = dataAccess.getAllEmployeesInApartments();
            personInApartmentCollection = FXCollections.observableArrayList(persons);
            tableViewTenants.setItems(personInApartmentCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showAllEmployees(ActionEvent actionEvent) {
        try {
            List<Employee> employees = dataAccess.getAllEmployees();
            ObservableList<Employee> personsCollection = FXCollections.observableArrayList(employees);
            tableViewEmps.setItems(personsCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showOutdatedDocs(ActionEvent actionEvent) {
        try {
            List<Documents> docs = dataAccess.getOutdatedDocs();
            ObservableList<Documents> docssCollection = FXCollections.observableArrayList(docs);
            tableViewDocs.setItems(docssCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showPersonsInsideNow(ActionEvent actionEvent) {
        try {
            List<PersonInside> persons = dataAccess.getPersonsInsideNow();
            ObservableList<PersonInside> personsCollection = FXCollections.observableArrayList(persons);
            tableViewAttendance.setItems(personsCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showStudentsWithoutApt(ActionEvent actionEvent) {
        try {
            List<Student> students = dataAccess.getStudentsView("SELECT * FROM students_without_apartment");
            ObservableList<Student> personsCollection = FXCollections.observableArrayList(students);
            tableViewStudents.setItems(personsCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showEmployeesWithoutApt(ActionEvent actionEvent) {
        try {
            List<Student> students = dataAccess.getStudentsView("SELECT * FROM employees_without_apartments");
            ObservableList<Student> personsCollection = FXCollections.observableArrayList(students);
            tableViewEmps.setItems(personsCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addStudent(ActionEvent actionEvent) {
        try {
            dataAccess.add_student(firstNameField.getText(), middleNameField.getText(), lastNameField.getText(), genderField.getText(),
                    Timestamp.valueOf(dobField.getText() + " 00:00:00"), documentField.getText(), Integer.parseInt(scholarshipField.getText()));
        } catch (SQLException e) {
            e.printStackTrace();

            alert("Incorrect input", e.getMessage());
        }
        showAllStudents(actionEvent);
    }

    public void addGuest(ActionEvent actionEvent) {
        try {
            dataAccess.add_guest(hostFirstNameFieldGuests.getText(), hostLastNameFieldGuests.getText(), Timestamp.valueOf(hostDOBFieldGuests.getText() + " 00:00:00"),
                    firstNameFieldGuests.getText(), middleNameFieldGuests.getText(), lastNameFieldGuests.getText(), genderFieldGuests.getText(),
                    Timestamp.valueOf(dobFieldGuests.getText() + " 00:00:00"), documentFieldGuests.getText());
        } catch (SQLException e) {
            e.printStackTrace();
            alert("Incorrect input", e.getMessage());
        }
        showAllGuests(null);
    }

    public void markGuestAsLeaved(ActionEvent actionEvent) {
        Guest g = tableViewGuests.getSelectionModel().getSelectedItem();
        if (g == null) {
            alert("Incorrect input", "Select guest");
            return;
        }
        try {
            dataAccess.guestLeaving(g.getGuestId(), g.getHostId());
        } catch (SQLException e) {
            e.printStackTrace();
            alert("Incorrect input", e.getMessage());
        }
        showAllGuests(null);
    }

    public void addEmployee(ActionEvent actionEvent) {
        try {
            dataAccess.add_employee(firstNameFieldEmp.getText(), middleNameFieldEmp.getText(), lastNameFieldEmp.getText(), genderFieldEmp.getText(),
                    Timestamp.valueOf(dobFieldEmp.getText() + " 00:00:00"), Integer.parseInt(salaryFieldEmp.getText()), roleFieldEmp.getText(), documentFieldEmp.getText());
        } catch (SQLException e) {
            e.printStackTrace();
            alert("Incorrect input", e.getMessage());
        }
        showAllEmployees(actionEvent);
    }

    public void addPersonToApt(TableColumn.CellEditEvent<PersonInApartment, Integer> event) {
        try {
            PersonInApartment person = personInApartmentCollection.get(event.getTablePosition().getRow());
            if (event.getTableColumn() == apartmentNumberTenants) {
                person.setAptNum(event.getNewValue());
                if (person.getBuildingID() != 0) {
                    dataAccess.add_person_to_apt(person.getId(), person.getAptNum(), person.getBuildingID(), new Timestamp(new Date(System.currentTimeMillis()).getTime()));
                    notification("Info", "Successfully updated");
                }
            } else if (event.getTableColumn() == buildingTenants) {
                person.setBuildingID(event.getNewValue());
                if (person.getAptNum() != 0) {
                    dataAccess.add_person_to_apt(person.getId(), person.getAptNum(), person.getBuildingID(), new Timestamp(new Date(System.currentTimeMillis()).getTime()));
                    notification("Info", "Successfully updated");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            alert("Incorrect input", e.getMessage());
        }
    }

    public void showAptOccupation(ActionEvent actionEvent) {
        fillAptTable("SELECT * FROM apartment_occupation ORDER BY beds_occupied DESC");
    }

    public void showAptForFemaleStudents(ActionEvent actionEvent) {
        fillAptTable("SELECT * FROM apartments_for_female_students ORDER BY beds_occupied DESC");
    }

    public void showAptForMaleStudents(ActionEvent actionEvent) {
        fillAptTable("SELECT * FROM apartments_for_male_students ORDER BY beds_occupied DESC");
    }

    public void showAptForMaleEmployees(ActionEvent actionEvent) {
        fillAptTable("SELECT * FROM apartments_for_male_employee ORDER BY beds_occupied DESC");
    }

    public void showAptForFemaleEmployees(ActionEvent actionEvent) {
        fillAptTable("SELECT * FROM apartments_for_female_employee ORDER BY beds_occupied DESC");
    }

    private void fillAptTable(String sql) {
        try {
            List<Apartments> apartments = dataAccess.getApartments(sql);
            ObservableList<Apartments> apartmentsCollection = FXCollections.observableArrayList(apartments);
            tableAptBeds.setItems(apartmentsCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void showRentalFee(ActionEvent actionEvent) {
        fillBalanceTable("SELECT * FROM rental_fee_balance ORDER BY family_name");
    }

    public void showRentalFeeNegative(ActionEvent actionEvent) {
        fillBalanceTable("SELECT * FROM rental_fee_balance_negative ORDER BY family_name");
    }

    public void showTuitionFee(ActionEvent actionEvent) {
        fillBalanceTable("SELECT * FROM tuition_fee_balance ORDER BY family_name");
    }

    public void showTuitionFeeNegative(ActionEvent actionEvent) {
        fillBalanceTable("SELECT * FROM tuition_fee_balance_negative ORDER BY family_name");
    }

    private void fillBalanceTable(String sql) {
        try {
            List<BalancePerson> balances = dataAccess.getBalances(sql);
            ObservableList<BalancePerson> balancesCollection = FXCollections.observableArrayList(balances);
            tableBalance.setItems(balancesCollection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void alert(String title, String content) {
        Alert alert = new Alert(Alert.AlertType.ERROR);
        alert.setTitle(title);
        alert.setHeaderText(null);
        alert.setContentText(content);
        alert.showAndWait();
    }

    private void notification(String title, String content) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle(title);
        alert.setHeaderText(null);
        alert.setContentText(content);
        alert.showAndWait();
    }
}
