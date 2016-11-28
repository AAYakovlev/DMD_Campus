package sample;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class Employee extends Person{
    private final SimpleIntegerProperty salary = new SimpleIntegerProperty();
    private final SimpleStringProperty role = new SimpleStringProperty();

    public Employee(int id, String fName, String mName, String lName, String dOfBirth, String gender) {
        super(id, fName, mName, lName, dOfBirth, gender, 0);
    }

    public Employee(int id, String fName, String mName, String lName, String dOfBirth, String gender, int doc, int salary, String role) {
        super(id, fName, mName, lName, dOfBirth, gender, doc);
        setRole(role);
        setSalary(salary);
    }

    public int getSalary() {
        return salary.get();
    }

    public SimpleIntegerProperty salaryProperty() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary.set(salary);
    }

    public String getRole() {
        return role.get();
    }

    public SimpleStringProperty roleProperty() {
        return role;
    }

    public void setRole(String role) {
        this.role.set(role);
    }
}
