package authenticationsystem;
import java.security.MessageDigest;
import java.util.*;




public class Authsystem
{
    public static void main(String[] args) throws Exception
    {
        Credentials creds = new Credentials("/Users/mgonzalez/Documents/Docs/CS-499/AuthSystem_Txt_files"); //Credentials creds = new Credentials(System.getProperty("user.dir"));

        Scanner sc = new Scanner(System.in);                                     //scanner class used for read input data
        sc.useDelimiter("\n");
        int i = 0;
        Roles role = null;

        while (true) {
            for (i = 0; i < 3; ++i)                                                 //loop for authentication to 3 logins
            {
                System.out.printf("You have %d attempts before getting logged out.\n", 3 - i);//Notifying the user that they have 3 attemtps
                System.out.println("Enter Username: ");                              //Prompt for username
                String userName = sc.next();                                         //read username
                System.out.println("Enter Password: ");                              //Prompt for Password
                String userPassword = sc.next();                                     //read password

                ///This is the link to the class to verify the password of to the password strings.
                // Artifact 1 to enhance the design of the code.
                String encrypted = Encryption.encryptThisString(userPassword);

                role = creds.authenticate(userName, encrypted);

                if ( role == null )
                {
                    if (i == 2)
                    {
                        System.out.print("Too many attempts, you are being logged out.");//When the user gets logged out with failed attempts
                    }
                }
            /* Breaks the loop to allow the user to log out and prompt the
            next user to log into the program */
                else
                {
                    break;
                }
            /* Loop to let the user log out and also prompt the next user for thier 
            username and password */
            }
            if (role != null)
            {
                System.out.println(role.get_description());
                System.out.println("Type LOG OUT to log out for the next user.");

                while (!sc.next().equals("LOG OUT"))
                {
                }
                System.out.println("Logged out.");
            }
            else
            {
                break;
            }


        }
    }
}
                
            
          
              
                  
                      