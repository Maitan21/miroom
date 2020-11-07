package co.kr.miroom.board.mapper;

import co.kr.miroom.board.vo.ReservationVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface ReservationMapper {

    // TODO 예약자 리스트
    List<ReservationVO> selectReservationList();

    List<ReservationVO> ReservationToday();

    Integer CheckDuplication(Map param);
    // 예약자 등록
    void InsertReserver(Map param);
    // 예약 등록
    void InsertReservation(Map param);

    Integer DeleteReservation(Map param);

}
