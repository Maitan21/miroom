package co.kr.miroom.manager.conrtroller;


import co.kr.miroom.manager.mapper.AccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.authentication.AuthenticationTrustResolverImpl;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;

@Controller
public class AccountController {

    @Autowired
    AccountMapper accountMapper;

    @RequestMapping("/dashboard/home")
    public String admin() {
        return "dashboard/home";
    }
    @RequestMapping("/tos")
    public String tos() {
        return "handler/TOS";
    }

    @RequestMapping("/denied")
    public String denied() {

        return "handler/deniedAuth";
    }

    @RequestMapping("/login")
    public String login() {
        return "login/login";
    }



}
