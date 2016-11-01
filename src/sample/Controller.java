package sample;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;

import java.net.URL;
import java.sql.SQLException;
import java.util.ArrayList;
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

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            List<Student> students = dataAccess.getAllStudents();
            ObservableList<Student> personsCollection = FXCollections.observableArrayList(students);
            tableViewStudents.setItems(personsCollection);
            List<Guest> guests = dataAccess.getAllGuests();
            ObservableList<Guest> guestsCollection = FXCollections.observableArrayList(guests);
            tableViewGuests.setItems(guestsCollection);
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

//    private void showGuests(){
//
//    }

    public void showAllStudents(ActionEvent actionEvent){
        try {
            List<Student> students = dataAccess.getAllStudents();
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
//
    public void clearTable(ActionEvent actionEvent){
        tableViewStudents.setItems(FXCollections.observableArrayList(Collections.EMPTY_LIST));
    }
//
//    private void showCollection(List collection, List<TableColumn> columns){
//        ObservableList list = FXCollections.observableArrayList(collection);
//        tableViewStudents.getColumns().removeAll();
//        tableViewStudents.getColumns().addAll(columns);
//        tableViewStudents.setItems(list);
//    }
}
