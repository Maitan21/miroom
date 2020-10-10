package co.kr.miroom.manager.conrtroller;


import co.kr.miroom.manager.mapper.AccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountController {

    @Autowired
    AccountMapper accountMapper;

    @RequestMapping("/dashboard/home")
    public String admin() {
        return "dashboard/home";
    }

    @RequestMapping("/")
    public String logout() {
        return "login/login";
    }

}
