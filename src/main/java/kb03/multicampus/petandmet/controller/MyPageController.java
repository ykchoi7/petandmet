package kb03.multicampus.petandmet.controller;

import kb03.multicampus.petandmet.dto.UserDto;
import kb03.multicampus.petandmet.mapper.UserMapper;
import kb03.multicampus.petandmet.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MyPageController {
    @Autowired
    UserMapper mapper;

    @Autowired
    UserService userService;
    @GetMapping("/mypage")
    public String mypage(Model model, HttpServletRequest req)  {
        HttpSession session = req.getSession();
        Object user = session.getAttribute("user");//user찾아옴
        UserDto u = (UserDto) user;
        model.addAttribute("user",u);//찾아와서 모델에 저장
        return "mypage";
    }

}
