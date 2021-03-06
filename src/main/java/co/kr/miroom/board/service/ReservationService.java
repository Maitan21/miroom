package co.kr.miroom.board.service;

import co.kr.miroom.board.mapper.ReservationMapper;
import co.kr.miroom.board.vo.ReservationVO;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

public interface ReservationService {

    public List<ReservationVO> selectReservationList() throws Exception;

    public List<ReservationVO> selectOneReservation(Map param) throws Exception;

    public List<ReservationVO> ReservationToday() throws Exception;

    public Integer CheckDuplication(Map param);

    public void addReserver(Map param);

    public void addReservation(Map param);

    public Integer DeleteReservation(Map param);

    public Integer UpdateReservation(Map param);
}
