package sample;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class Guest {

    private final SimpleStringProperty firstName = new SimpleStringProperty("");
    private final SimpleStringProperty lastName = new SimpleStringProperty("");
    private final SimpleStringProperty hostFirstName = new SimpleStringProperty("");
    private final SimpleStringProperty hostLastName = new SimpleStringProperty("");
    private final SimpleStringProperty start = new SimpleStringProperty("");
    private final SimpleStringProperty end = new SimpleStringProperty("");
    private final SimpleIntegerProperty hostId = new SimpleIntegerProperty(0);
    private final SimpleIntegerProperty guestId = new SimpleIntegerProperty(0);

    public Guest(String fName, String lName, String hostFName, String hostLName, String startDate, String endDate, int hostID, int guestID) {
        setFirstName(fName);
        setLastName(lName);
        setHostFirstName(hostFName);
        setHostLastName(hostLName);
        setStart(startDate);
        setEnd(endDate);
        setHostId(hostID);
        setGuestId(guestID);
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

    public int getGuestId() {
        return guestId.get();
    }

    public SimpleIntegerProperty guestIdProperty() {
        return guestId;
    }

    public void setGuestId(int guestId) {
        this.guestId.set(guestId);
    }

    public int getHostId() {
        return hostId.get();
    }

    public SimpleIntegerProperty hostIdProperty() {
        return hostId;
    }

    public void setHostId(int hostId) {
        this.hostId.set(hostId);
    }
}
