package kb03.multicampus.petandmet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class MainController {

	@GetMapping("/")
	public String main() {
		return "main";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@PostMapping("/login")
	public String loginpost(Model model, HttpServletRequest req, HttpServletResponse res,
							@RequestParam("ID") String ID, @RequestParam("PW") String PW) throws IOException {
		return null;
	}

	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
}
