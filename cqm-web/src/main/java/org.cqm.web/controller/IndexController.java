package org.cqm.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IndexController {
    @RequestMapping(method = RequestMethod.GET, path = "/index")
    public String printHello(ModelMap model) {
        model.addAttribute("message", "123");
        return "index";
    }
}
