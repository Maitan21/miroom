package co.kr.miroom.board.mapper;

import co.kr.miroom.board.vo.ReservationVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReservationMapper {

    // TODO 예약자 리스트
    List<ReservationVO> selectReservationList();

}
