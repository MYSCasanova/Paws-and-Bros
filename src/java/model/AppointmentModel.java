
package model;
public class AppointmentModel {
    private String date;
    private String vetName;
    private String petName;
    private int appointmentNum;
    private String clinicName;

    // Constructor to initialize the appointment
    public AppointmentModel (String date, String vetName, String petName, int appointmentNum, String clinicName) {
        this.date = date;
        this.vetName = vetName;
        this.petName = petName;
        this.appointmentNum = appointmentNum;
        this.clinicName = clinicName;
    }

    // Getters and setters for the appointment fields
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getVetName() {
        return vetName;
    }

    public void setVetName(String vetName) {
        this.vetName = vetName;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    public int getAppointmentNum() {
        setAppointmentNum(appointmentNum);
        return appointmentNum;
    }

    public void setAppointmentNum(int appointmentNum) {
        this.appointmentNum = appointmentNum;
    }
    
    public String getClinicName() {
        return clinicName;
    }

    public void setClinicName(String clinicName) {
        this.clinicName = clinicName;
    }
}


