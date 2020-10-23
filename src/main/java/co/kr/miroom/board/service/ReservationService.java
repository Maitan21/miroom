package co.kr.miroom.board.service;

import co.kr.miroom.board.vo.ReservationVO;

import java.util.List;

public interface ReservationService {

    public List<ReservationVO> selectReservationList() throws Exception;
}
