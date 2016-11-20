package sample;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class PersonInApartment extends Person {
    final private SimpleIntegerProperty aptNum = new SimpleIntegerProperty();
    final private SimpleIntegerProperty buildingID = new SimpleIntegerProperty();
    final private SimpleStringProperty startDate = new SimpleStringProperty();

    public PersonInApartment(int id, String fName, String mName, String lName, String dOfBirth, String gender, int doc, int aptNum, int buildingID, String startDate) {
        super(id, fName, mName, lName, dOfBirth, gender, doc);
        setAptNum(aptNum);
        setBuildingID(buildingID);
        setStartDate(startDate);
    }

    public int getAptNum() {
        return aptNum.get();
    }

    public SimpleIntegerProperty aptNumProperty() {
        return aptNum;
    }

    public void setAptNum(int aptNum) {
        this.aptNum.set(aptNum);
    }

    public int getBuildingID() {
        return buildingID.get();
    }

    public SimpleIntegerProperty buildingIDProperty() {
        return buildingID;
    }

    public void setBuildingID(int buildingID) {
        this.buildingID.set(buildingID);
    }

    public String getStartDate() {
        return startDate.get();
    }

    public SimpleStringProperty startDateProperty() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate.set(startDate);
    }
}
