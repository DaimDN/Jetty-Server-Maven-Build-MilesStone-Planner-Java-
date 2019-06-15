package org.eclipse.jetty.demo;

import java.time.LocalDate;

import java.text.SimpleDateFormat;

import java.util.Date;

import java.text.ParseException;
import java.io.*;
import java.io.*;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;
import javax.swing.JTable;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.BufferedOutputStream;
import java.io.ObjectOutputStream;
import java.io.FileNotFoundException;

public class MilestoneUtil {

    public static String Msname;
    public static String Msdescription;
    public static String Msdate = "dd-MM-yyyy";
    public static String Pname;
    private static final String filenamex = "ms.ser";


    public MilestoneUtil(String msname, String msdescription, String msdate, String pname) {
        Msname = msname;
        Msdescription = msdescription;
        Msdate = msdate;
        Pname = pname;
    }


    public String getMsname() {
        return Msname;
    }

    public void setMsname(String msname) {
        Msname = msname;
    }

    public String getMsdescription() {
        return Msdescription;
    }

    public void setMsdescription(String msdescription) {
        Msdescription = msdescription;
    }

    public String getMsdate() {
        return Msdate;
    }

    public void setMsdate(String msdate) {
        Msdate = msdate;
    }

    public String getPname() {
        return Pname;
    }

    public void setPname(String pname) {
        Pname = pname;
    }


    public static String name() {

        return Msname;
    }

    public static String Des() {

        return Msdescription;
    }

    public static String Date() {

        return Msdate;
    }

    public static String Pname() {

        return Pname;
    }





}

