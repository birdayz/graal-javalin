package de.nerden.samples.graal;

import io.javalin.Javalin;

public class Main {

    public static void main(String[] args) {
        Test t = new Test();
        t.setAbc("LOL");
        Javalin app = Javalin.create().start(7000);
        app.get("/", ctx -> ctx.json(t));
    }
}