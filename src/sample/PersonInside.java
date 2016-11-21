package sample;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class PersonInside {
    SimpleStringProperty firstName = new SimpleStringProperty();
    SimpleStringProperty lastName = new SimpleStringProperty();
    SimpleIntegerProperty buildingId = new SimpleIntegerProperty();
    SimpleStringProperty dateTime = new SimpleStringProperty();

    public PersonInside(String fName, String lName, int buildingId, String dateTime) {
        setFirstName(fName);
        setLastName(lName);
        setBuildingId(buildingId);
        setDateTime(dateTime);
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

    public int getBuildingId() {
        return buildingId.get();
    }

    public SimpleIntegerProperty buildingIdProperty() {
        return buildingId;
    }

    public void setBuildingId(int buildingId) {
        this.buildingId.set(buildingId);
    }

    public String getDateTime() {
        return dateTime.get();
    }

    public SimpleStringProperty dateTimeProperty() {
        return dateTime;
    }

    public void setDateTime(String dateTime) {
        this.dateTime.set(dateTime);
    }
}
