package kb03.multicampus.petandmet.controller;

import kb03.multicampus.petandmet.dto.PetDto;
import kb03.multicampus.petandmet.dto.UserDto;
import kb03.multicampus.petandmet.mapper.PetMapper;
import kb03.multicampus.petandmet.mapper.UserMapper;
import kb03.multicampus.petandmet.service.PetService;
import kb03.multicampus.petandmet.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/mypetpage")
public class MyPetPageController {
    @Autowired
    UserMapper userMapper;

    @Autowired
    PetMapper petMapper;

    @Autowired
    UserService userService;

    @Autowired
    PetService petService;
    
    @GetMapping
    public String mypage(Model model, HttpServletRequest req) {
        HttpSession session = req.getSession();
        Object user = session.getAttribute("user");//user찾아옴
        UserDto u = (UserDto) user;
        int uid = u.getNo();//펫 주인 찾아옴
        List<PetDto> pets = petMapper.findByUid(uid);
        model.addAttribute("pets",pets);

        return "mypetpage";
    }

}
