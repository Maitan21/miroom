package co.kr.miroom.manager.repository;

import co.kr.miroom.manager.mapper.AccountMapper;
import co.kr.miroom.manager.vo.CustomUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;

@Repository
public class AccountRepository {

    @Autowired
    AccountMapper accountMapper;

    public CustomUserDetails findById(String username) {
        return accountMapper.readAccount(username);

    }
}
