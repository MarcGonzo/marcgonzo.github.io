package authenticationsystem;



import java.util.*;
import java.io.BufferedReader;
import java.io.FileReader;



public class Credentials {

    private final HashMap creds;

    public Credentials(String directory) throws Exception {
        String user = null;
        String password = null;
        String role = null;
        String strLine = null;
        String filePath = directory + "/credentials.txt";
        BufferedReader br = new BufferedReader(new FileReader(filePath));
        creds = new HashMap();
        HashMap roles = new HashMap();



        while( (strLine = br.readLine()) != null)
        {
            StringTokenizer st = new StringTokenizer(strLine,"\t");   //Tokenizer class to divide line into strings with deliminator tab

            for (int i = 0; i < 4 && st.hasMoreTokens(); i++ )
            {
                String token = st.nextToken();
                if ( i == 0 )
                {
                    // username token
                    user = token;
                }
                else if ( i == 1 )
                {
                    // hashed password
                    password = token;
                }
                else if ( i == 3 )
                {
                    // role token
                    role = token;
                }
            }

            Roles r = (Roles) roles.get(role);                        //Get role file from the final project folder
            if ( r == null )
            {
                r = new Roles(role, directory + "/" + role + ".txt");//read the role file
                roles.put(role, r);
            }

            creds.put(user, new User(user, r, password));
        }
    }

    public Roles authenticate(String username, String password)
    {
        User info = (User) creds.get(username);
        if ( info == null )
            return null;

        if ( password.equals(info.getPassword()))
            return info.getRole();

        return null;
    }





}
