package com.company;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        ArrayList<String> task = singleton("Functional");
        System.out.println(task);
        System.out.println(nullFunc(task));
        System.out.println(snoc(task, "Programming"));
        System.out.println(length(task));
    }
    public static ArrayList<String> singleton (String string){
        ArrayList<String> list = new ArrayList<>();
        list.add(string);
        return list;
    }
    public static boolean nullFunc (ArrayList<String> list){
        return list.isEmpty();
    }
    public static ArrayList<String> snoc (ArrayList<String> list, String string){
        list.add(string);
        return list;
    }
    public static int length (ArrayList<String> list){
        int length=0;
        for(String string:list){
            length++;
        }
        return length;
    }
}
