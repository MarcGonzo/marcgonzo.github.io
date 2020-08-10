
package authenticationsystem;

//Class to set the different variables for user, role, and passwod

public class User
{
    private final String user;
    private final Roles role;
    private final String password;

    /**
     *
     * @param username
     * @param userrole
     * @param userpassword
     */
    public User(String username, Roles userrole, String userpassword)
    {
        user = username;
        role = userrole;
        password = userpassword;
    }

    public Roles getRole()
    {
        return role;
    }

    public String getPassword()
    {
        return password;
    }
}
