package kb03.multicampus.petandmet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypetpage")
public class MyPetPageController {
    @GetMapping
    public String mypage() {
        return "mypetpage";
    }

}
