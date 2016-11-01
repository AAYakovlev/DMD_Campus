package sample;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableView;

import java.net.URL;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;
import java.util.ResourceBundle;

public class Controller implements Initializable{

    private DataAccess dataAccess;

    public Controller(DataAccess dataAccess) {
        this.dataAccess = dataAccess;
    }

    @FXML
    TableView tableViewStudents;
    @FXML
    TableView tableViewGuests;
    @FXML
    TableView tableAptBeds;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            List<Student> students = dataAccess.getAllStudents();
            ObservableList<Student> personsCollection = FXCollections.observableArrayList(students);
            tableViewStudents.setItems(personsCollection);
            List<Guest> guests = dataAccess.getAllGuests();
            ObservableList<Guest> guestsCollection = FXCollections.observableArrayList(guests);
            tableViewGuests.setItems(guestsCollection);
            List<Apartments> apartments = dataAccess.getApartments("SELECT * FROM apartment_occupation ORDER BY beds_occupied DESC");
            ObservableList<Apartments> apartmentsCollection = FXCollections.observableArrayList(apartments);
            tableAptBeds.setItems(apartmentsCollection);
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void showAptOccupation(ActionEvent actionEvent){
        fillAptTable("SELECT * FROM apartment_occupation ORDER BY beds_occupied DESC");
    }

    public void showAptForFemaleStudents(ActionEvent actionEvent){
        fillAptTable("SELECT * FROM apartments_for_female_students ORDER BY beds_occupied DESC");
    }

    public void showAptForMaleStudents(ActionEvent actionEvent){
        fillAptTable("SELECT * FROM apartments_for_male_students ORDER BY beds_occupied DESC");
    }

    public void showAptForMaleEmployees(ActionEvent actionEvent){
        fillAptTable("SELECT * FROM apartments_for_male_employee ORDER BY beds_occupied DESC");
    }

    public void showAptForFemaleEmployees(ActionEvent actionEvent){
        fillAptTable("SELECT * FROM apartments_for_female_employee ORDER BY beds_occupied DESC");
    }

    public void showAllGuests(ActionEvent actionEvent){
        try {
            List<Guest> guests = dataAccess.getAllGuests();
            ObservableList<Guest> guestsCollection = FXCollections.observableArrayList(guests);
            tableViewGuests.setItems(guestsCollection);
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void showAllStudents(ActionEvent actionEvent){
        try {
            List<Student> students = dataAccess.getAllStudents();
            ObservableList<Student> personsCollection = FXCollections.observableArrayList(students);
            tableViewStudents.setItems(personsCollection);
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void showStudentsWithoutApt(ActionEvent actionEvent){
        try {
            List<Student> students = dataAccess.getStudentsView("SELECT * FROM students_without_apartment");
            ObservableList<Student> personsCollection = FXCollections.observableArrayList(students);
            tableViewStudents.setItems(personsCollection);
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void showEmployeesWithoutApt(ActionEvent actionEvent){
        try {
            List<Student> students = dataAccess.getStudentsView("SELECT * FROM employees_without_apartments");
            ObservableList<Student> personsCollection = FXCollections.observableArrayList(students);
            tableViewStudents.setItems(personsCollection);
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

//    public void showAllStudents(ActionEvent ae){
//        List<TableColumn> columns = new ArrayList<>();
//        columns.addAll(new TableColumn("First Name")., );
//    }

    public void clearTableGuests(ActionEvent actionEvent){
        tableViewGuests.setItems(FXCollections.observableArrayList(Collections.EMPTY_LIST));
    }

    public void clearTableStudents(ActionEvent actionEvent){
        tableViewStudents.setItems(FXCollections.observableArrayList(Collections.EMPTY_LIST));
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
//
//    private void showCollection(List collection, List<TableColumn> columns){
//        ObservableList list = FXCollections.observableArrayList(collection);
//        tableViewStudents.getColumns().removeAll();
//        tableViewStudents.getColumns().addAll(columns);
//        tableViewStudents.setItems(list);
//    }
}
