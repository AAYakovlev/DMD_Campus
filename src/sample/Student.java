package sample;

import javafx.beans.property.SimpleIntegerProperty;


public class Student extends Person {
    private final SimpleIntegerProperty scholarship = new SimpleIntegerProperty();

//    public Student(int id, String fName, String mName, String lName, String dOfBirth, String gender) {
//        super(id, fName, mName, lName, dOfBirth, gender);
//    }
//
//    public Student(int id, String fName, String mName, String lName, String dOfBirth, String gender, int doc) {
//        super(id, fName, mName, lName, dOfBirth, gender, doc);
//    }
    public Student(int id, String fName, String mName, String lName, String dOfBirth, String gender) {
        super(id, fName, mName, lName, dOfBirth, gender, 0);
    }

    public Student(int id, String fName, String mName, String lName, String dOfBirth, String gender, int doc, int scholarship) {
        super(id, fName, mName, lName, dOfBirth, gender, doc);
        setScholarship(scholarship);
    }


    public int getScholarship() {
        return scholarship.get();
    }

    public SimpleIntegerProperty scholarshipProperty() {
        return scholarship;
    }

    public void setScholarship(int scholarship) {
        this.scholarship.set(scholarship);
    }
}
