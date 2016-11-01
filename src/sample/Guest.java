package sample;

import javafx.beans.property.SimpleStringProperty;

public class Guest {

    private final SimpleStringProperty firstName = new SimpleStringProperty("");
    private final SimpleStringProperty lastName = new SimpleStringProperty("");
    private final SimpleStringProperty hostFirstName = new SimpleStringProperty("");
    private final SimpleStringProperty hostLastName = new SimpleStringProperty("");
    private final SimpleStringProperty start = new SimpleStringProperty("");
    private final SimpleStringProperty end = new SimpleStringProperty("");

    public Guest(String fName, String lName, String hostFName, String hostLName, String startDate, String endDate) {
        setFirstName(fName);
        setLastName(lName);
        setHostFirstName(hostFName);
        setHostLastName(hostLName);
        setStart(startDate);
        setEnd(endDate);
    }

    public String getFirstName() {
        return firstName.get();
    }

    public SimpleStringProperty firstNameProperty() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName.set(firstName);
    }

    public String getLastName() {
        return lastName.get();
    }

    public SimpleStringProperty lastNameProperty() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName.set(lastName);
    }

    public String getHostFirstName() {
        return hostFirstName.get();
    }

    public SimpleStringProperty hostFirstNameProperty() {
        return hostFirstName;
    }

    public void setHostFirstName(String hostFirstName) {
        this.hostFirstName.set(hostFirstName);
    }

    public String getHostLastName() {
        return hostLastName.get();
    }

    public SimpleStringProperty hostLastNameProperty() {
        return hostLastName;
    }

    public void setHostLastName(String hostLastName) {
        this.hostLastName.set(hostLastName);
    }

    public String getStart() {
        return start.get();
    }

    public SimpleStringProperty startProperty() {
        return start;
    }

    public void setStart(String start) {
        this.start.set(start);
    }

    public String getEnd() {
        return end.get();
    }

    public SimpleStringProperty endProperty() {
        return end;
    }

    public void setEnd(String end) {
        this.end.set(end);
    }

}
