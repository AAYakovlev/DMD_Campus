package sample;


import javafx.beans.property.SimpleIntegerProperty;

public class Apartments {
    private final SimpleIntegerProperty occupiedBeds = new SimpleIntegerProperty();
    private final SimpleIntegerProperty aptNumber = new SimpleIntegerProperty();
    private final SimpleIntegerProperty buildingId = new SimpleIntegerProperty();
    private final SimpleIntegerProperty beds = new SimpleIntegerProperty();
    private final SimpleIntegerProperty freeBeds = new SimpleIntegerProperty();

    public Apartments(int ocBeds, int aptNum, int building, int beds, int freeBeds) {
        setOccupiedBeds(ocBeds);
        setAptNumber(aptNum);
        setBuildingId(building);
        setBeds(beds);
        setFreeBeds(freeBeds);
    }

    public int getOccupiedBeds() {
        return occupiedBeds.get();
    }

    public SimpleIntegerProperty occupiedBedsProperty() {
        return occupiedBeds;
    }

    public void setOccupiedBeds(int occupiedBeds) {
        this.occupiedBeds.set(occupiedBeds);
    }

    public int getAptNumber() {
        return aptNumber.get();
    }

    public SimpleIntegerProperty aptNumberProperty() {
        return aptNumber;
    }

    public void setAptNumber(int aptNumber) {
        this.aptNumber.set(aptNumber);
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

    public int getBeds() {
        return beds.get();
    }

    public SimpleIntegerProperty bedsProperty() {
        return beds;
    }

    public void setBeds(int beds) {
        this.beds.set(beds);
    }

    public int getFreeBeds() {
        return freeBeds.get();
    }

    public SimpleIntegerProperty freeBedsProperty() {
        return freeBeds;
    }

    public void setFreeBeds(int freeBeds) {
        this.freeBeds.set(freeBeds);
    }
}
