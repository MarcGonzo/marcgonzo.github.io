package authenticationsystem;

        import java.io.FileReader;

/*Class to read the role files from a file path
and to read the file as a whole */

public class Roles {
    private final String name;
    private String description;

    public Roles(String role_name, String desc_path) throws Exception
    {
        char buffer[] = new char[256];
        FileReader rd = new FileReader(desc_path);
        int bytes_read = 0;
        description = "";

        do
        {
            bytes_read = rd.read(buffer, 0, 256);
            if ( bytes_read > 0 )
            {
                description += new String(buffer);
            }
        } while (bytes_read > 0);

        name = role_name;
    }

    public String get_name()
    {
        return name;
    }

    public String get_description()
    {
        return description;
    }
}
