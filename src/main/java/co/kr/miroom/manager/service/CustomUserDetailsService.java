package co.kr.miroom.manager.service;

import co.kr.miroom.manager.repository.AccountRepository;

import co.kr.miroom.manager.vo.CustomUserDetails;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {

        @Autowired
        AccountRepository accounts;

        Logger log = LoggerFactory.getLogger(this.getClass());
        /*
         TODO 메서드 호출될 때 나의 DB에 접근해서 계정정보를 가져온다.
         Spring Security의 속성으로 지정한 loginProcessingUrl작동시 실행
         */
        @Override
        public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

            log.info("## loadUserByUsername ##");

            CustomUserDetails account = (CustomUserDetails) accounts.findById(username);

            if( account == null ) {
                log.debug("## 계정정보가 존재하지 않습니다. ##");
                throw new UsernameNotFoundException(username);
            }
            return account;
        }

}
