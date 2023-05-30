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
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import lombok.extern.slf4j.Slf4j;


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

    @ResponseBody
    @PostMapping
    public PetDto getPet(int no){
        PetDto pet = petMapper.findByNo(no);
        return pet;
    }
    @GetMapping("/mypetregister")
    public String mypetregister(){
        return "mypetregister";
    }
    @PostMapping("/mypetregister")
    public String post_mypetregister(Model model, HttpServletRequest req,
                                     @RequestParam("id") String id,
                                     @RequestParam("pet_type") String pet_type,
                                     @RequestParam("name") String name,
                                     @RequestParam("birth") String birth,
                                     @RequestParam("weight") int weight,
                                     @RequestParam("gender") String gender,
                                     @RequestParam("isNeutered") boolean isNeutered,
                                     @RequestParam("breedSelect") String breed,
                                     @RequestParam("patella") boolean patella,
                                     @RequestParam("tooth") boolean tooth,
                                     @RequestParam("skin") boolean skin,
                                     @RequestParam("scaling") boolean scaling
                                     ){
        HttpSession session = req.getSession();
        Object user = session.getAttribute("user");//user찾아옴
        UserDto u = (UserDto) user;
        int uid = u.getNo();//펫 주인 찾아옴
        int iid = Integer.parseInt(id);
        String pet_image = "https://i.postimg.cc/VkvR5ZCd/Kakao-Talk-20230518-102140797-06.jpg";
        petMapper.insertPet(uid,iid,pet_type,name,birth,weight,gender,isNeutered,pet_image,breed,patella,tooth,skin,scaling);

        return "redirect:/mypetpage";
    }
}
