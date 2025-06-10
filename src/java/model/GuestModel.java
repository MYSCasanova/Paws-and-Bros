package model;
public class GuestModel {
    public int authenticate(String inputName, String inputEmail){
        if(inputName.isEmpty())
            return 2;
        else if (inputEmail.isEmpty())
            return 3;
        else return 1;
    }
}
