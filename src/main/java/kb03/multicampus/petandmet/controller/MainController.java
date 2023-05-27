package kb03.multicampus.petandmet.controller;

import kb03.multicampus.petandmet.dto.UserDto;
import kb03.multicampus.petandmet.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class MainController {
	@Autowired
	UserService userService;
	@GetMapping("/")
	public String main() {
		return "main";
	}
	
	@GetMapping("/login")
	public String Getlogin() {
		return "login";
	}

	@PostMapping("/login")
	public String PostLogin(Model model, HttpServletRequest req, HttpServletResponse res,
							@RequestParam("id") String id, @RequestParam("password") String password) throws IOException {
		UserDto user = userService.findById(id);//id로 유저 찾아서 dto 객체 user에 저장
		HttpSession httpSession = req.getSession();
		httpSession.setAttribute("user",user);//세션에 user라는 이름으로 저장
		return "redirect:mypage";
	}

	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}

	@GetMapping("/chat_index")
	public String chat_index() {
		return "chat_index";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}


//	@GetMapping("/insurances")
//	public String insurances() {
//		return "insurances";
//	}
//
//	@GetMapping("/insurance")
//	public String insurance() {
//		return "insurance";
//	}

}
