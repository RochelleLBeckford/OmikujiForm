package com.rochelle.omikuji_form.controllers;
//? Pair Programming - Dominic Basa

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller

//? How to shorten it so no repetition -> not have to always keep typing /daikichi
// -> put @RequestMapping under rest controller for /daikichi and them remove it from the other rout
// @RequestMapping("/omikuji")

public class MainController {
    
    // @RequestMapping("")
    // public String home(HttpSession session) {
    //     return "<h1>Welcome!</h1><a href=\"/\">Home</a>";
    // }

    @RequestMapping("/")
    public String index() {
        // we do not render in session we redirect to where we want to go
        return "index.jsp";
    }

    /* 
    ~ Handling Forms
    -> need 2 routes 
        -> one to render the form
        -> one to handle the data when it comes back 
    */
    @PostMapping("/omikuji")
    public String omikuji(
        @RequestParam(value = "number") Integer number, 
        @RequestParam(value = "location") String location, 
        @RequestParam(value = "name") String name, 
        @RequestParam(value = "hobby") String hobby, 
        @RequestParam(value = "livingThing") String livingThing, 
        @RequestParam(value = "niceComment") String niceComment, 
        HttpSession session) {

        // System.out.println(name);
        session.setAttribute("number", number);
        session.setAttribute("location", location);
        session.setAttribute("name", name);
        session.setAttribute("hobby", hobby);
        session.setAttribute("livingThing", livingThing);
        session.setAttribute("niceComment", niceComment);
        // we do not render in session we redirect to where we want to go
        return "redirect:/omikuji/show";
    }

    @RequestMapping("/omikuji/show")
    public String show() {
        return "showOmikuji.jsp";
    }

    
    //? how to add name to session 
        // duplicate index.jsp -> rename to display and take out form 
        //Once in session it is always available
    
}

