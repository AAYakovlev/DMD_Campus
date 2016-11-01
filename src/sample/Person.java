package sample;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

/**
 * Created by Lex on 31.10.16.
 */
public class Person {

    private final SimpleIntegerProperty id = new SimpleIntegerProperty();
    private final SimpleStringProperty firstName = new SimpleStringProperty("");
    private final SimpleStringProperty middleName = new SimpleStringProperty("");
    private final SimpleStringProperty lastName = new SimpleStringProperty("");
    private final SimpleStringProperty dateOfBirth = new SimpleStringProperty("");
    private final SimpleStringProperty gender = new SimpleStringProperty();
    private final SimpleIntegerProperty document = new SimpleIntegerProperty();

    public Person(int id, String fName, String mName, String lName, String dOfBirth, String gender) {
        setId(id);
        setFirstName(fName);
        setMiddleName(mName);
        setLastName(lName);
        setDateOfBirth(dOfBirth);
        setGender(gender);
    }

    public Person(int id, String fName, String mName, String lName, String dOfBirth, String gender, int doc) {
        setId(id);
        setFirstName(fName);
        setMiddleName(mName);
        setLastName(lName);
        setDateOfBirth(dOfBirth);
        setGender(gender);
        setDocument(doc);
    }

    public int getId() {
        return id.get();
    }

    public SimpleIntegerProperty idProperty() {
        return id;
    }

    public void setId(int id) {
        this.id.set(id);
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

    public String getMiddleName() {
        return middleName.get();
    }

    public SimpleStringProperty middleNameProperty() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName.set(middleName);
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

    public String getDateOfBirth() {
        return dateOfBirth.get();
    }

    public SimpleStringProperty dateOfBirthProperty() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth.set(dateOfBirth);
    }

    public String getGender() {
        return gender.get();
    }

    public SimpleStringProperty genderProperty() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender.set(gender);
    }

    public int getDocument() {
        return document.get();
    }

    public SimpleIntegerProperty documentProperty() {
        return document;
    }

    public void setDocument(int document) {
        this.document.set(document);
    }
}
