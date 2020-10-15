package co.kr.miroom.manager.mapper;

import co.kr.miroom.manager.vo.CustomUserDetails;
import org.apache.ibatis.annotations.Mapper;

//DAO(VO)에서 호출하는 Mapper 인터페이스
@Mapper
public interface AccountMapper {

    CustomUserDetails readAccount(String id);
}
