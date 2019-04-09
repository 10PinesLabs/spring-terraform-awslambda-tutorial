package com.tenpines.lambda.controller;


import com.tenpines.lambda.dto.GreetingDto;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.util.HashMap;
import java.util.Map;


@RestController
@EnableWebMvc
public class PingController {
    @RequestMapping(path = "/ping", method = RequestMethod.GET)
    public Map<String, String> ping() {
        Map<String, String> pong = new HashMap<>();
        pong.put("pong", "Hello, World!");
        return pong;
    }

    @RequestMapping(path = "/greeting", method = RequestMethod.GET)
    public GreetingDto sayHello(@RequestParam String name) {
        String message = "Hello " + name;
        GreetingDto dto = new GreetingDto();
        dto.setMessage(message); return dto;
    }
}
