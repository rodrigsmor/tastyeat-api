package com.tastyeat.api.resource;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestResource {

    @PostMapping("/test")
    public String test() {
        return "teste";
    }
}
