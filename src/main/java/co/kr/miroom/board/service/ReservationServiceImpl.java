package co.kr.miroom.board.service;

import co.kr.miroom.board.mapper.ReservationMapper;

import co.kr.miroom.board.vo.ReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservationServiceImpl implements ReservationService{

    @Autowired
    private ReservationMapper reservationMapper;

    @Override
    public List<ReservationVO> selectReservationList() throws Exception {

        return reservationMapper.selectReservationList();

    }
}
