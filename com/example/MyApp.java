package com.example;

public class MyApp {
    public String name;

    public static void main(String[] args) {
        System.out.println("Hello, World update!");

        MyApp a = new MyApp();
        String name = a.start(2);
        System.out.println(name);
    }

    MyApp() {
        System.out.println("called constructor");
    }

    public String start(Integer s) {
        System.out.println(s);
        this.name = "H";
        return "hi";
    }
}

