package org.eclipse.jetty.demo;

import java.io.*;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;

public class SerializeUtil {

    private static final String fileName = "Database.ser";

    public static void writeToFile(Hashtable table)
    {

        try (
                OutputStream file = new FileOutputStream(fileName);
                OutputStream buffer = new BufferedOutputStream(file);
                ObjectOutput output = new ObjectOutputStream(buffer);
        ){
            output.writeObject(table);
        }
        catch(IOException ex){
            System.out.println("Cannot perform output.");
            ex.printStackTrace();
        }

    }

    public static Hashtable readFromFile()
    {

        try(
                InputStream file = new FileInputStream(fileName);
                InputStream buffer = new BufferedInputStream(file);
                ObjectInput input = new ObjectInputStream (buffer);
        ){

            return (Hashtable)input.readObject();
        }
        catch(ClassNotFoundException ex){
            System.out.println("Cannot perform input. Class not found.");
            ex.printStackTrace();
            return null;
        }
        catch(IOException ex){
            System.out.println("Cannot perform input.");
            ex.printStackTrace();
            return null;
        }
    }
}
