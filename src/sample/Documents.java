package sample;

import javafx.beans.property.SimpleStringProperty;

public class Documents {
    private SimpleStringProperty firstName = new SimpleStringProperty();
    private SimpleStringProperty lastName = new SimpleStringProperty();
    private SimpleStringProperty overdue = new SimpleStringProperty();
    private SimpleStringProperty docType = new SimpleStringProperty();

    public Documents(String fName, String lName, String overD, String docType) {
        setFirstName(fName);
        setLastName(lName);
        setDocType(docType);
        setOverdue(overD);
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

    public String getOverdue() {
        return overdue.get();
    }

    public SimpleStringProperty overdueProperty() {
        return overdue;
    }

    public void setOverdue(String overdue) {
        this.overdue.set(overdue);
    }

    public String getDocType() {
        return docType.get();
    }

    public SimpleStringProperty docTypeProperty() {
        return docType;
    }

    public void setDocType(String docType) {
        this.docType.set(docType);
    }
}
