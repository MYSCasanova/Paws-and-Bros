package model;

public class LoginModel{
    public int authenticate(String username, String password, String inputUsername, String inputPassword){
        if(inputUsername.isEmpty())
            return 2;
        else if (!inputUsername.equals(username))
            return 4;
        else if (inputPassword.isEmpty())
            return 3;
        else if (!inputPassword.equals(password))
            return 5;
        else return 1;
    }
}
