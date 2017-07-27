package entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;

public class Client implements Serializable{
    private int clientId;
    private String firstName;
    private String lastName;
    private Date birthday;


    public Client(){}

    public Client(int clientId, String firstName, String lastName, Date birthday) {
        this.clientId = clientId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthday = birthday;

    }

    public Date getBirthday() {
        return birthday;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getClientId() {
        return clientId;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }


}
