package com.cproduction.deploysample.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    static final String INDEX_MSG = "Hello SpringBoot";

    @GetMapping(value = "/")
    public String index() {
        return INDEX_MSG + " beta 0.1";
    }
}
