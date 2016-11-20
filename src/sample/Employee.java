package sample;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class Employee extends Person{
    private final SimpleIntegerProperty empId = new SimpleIntegerProperty();
    private final SimpleIntegerProperty salary = new SimpleIntegerProperty();
    private final SimpleStringProperty role = new SimpleStringProperty();


    public Employee(int id, String fName, String mName, String lName, String dOfBirth, String gender, int doc, int empId, int salary, String role) {
        super(id, fName, mName, lName, dOfBirth, gender, doc);
        setRole(role);
        setEmpId(empId);
        setSalary(salary);
    }

    public int getEmpId() {
        return empId.get();
    }

    public SimpleIntegerProperty empIdProperty() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId.set(empId);
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
