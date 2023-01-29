package com.test.cicdbranchrs.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

  @GetMapping(value = "/heath")
  public String health() {
    return "success";
  }
}
