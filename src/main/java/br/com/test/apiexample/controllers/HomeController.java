package br.com.test.apiexample.controllers;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * HomeController
 */

@RestController
public class HomeController {

    @GetMapping("/")
    public String home(){
        return "Hello World!";
    }

}
