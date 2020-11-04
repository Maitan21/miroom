package co.kr.miroom.board.service;

import co.kr.miroom.board.mapper.ReservationMapper;

import co.kr.miroom.board.vo.ReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ReservationServiceImpl implements ReservationService{

    @Autowired
    private ReservationMapper reservationMapper;

    @Override
    public List<ReservationVO> selectReservationList() throws Exception {
        return reservationMapper.selectReservationList();
    }

    @Override
    public List<ReservationVO> ReservationToday() throws Exception {
        return reservationMapper.ReservationToday();
    }

    @Override
    public int CheckDuplication(Map param) {
        return reservationMapper.CheckDuplication(param);
    }

    @Override
    public void addReserver(Map param) {
        reservationMapper.InsertReserver(param);
    }

    @Override
    public void addReservation(Map param) {
        reservationMapper.InsertReservation(param);
    }

    @Override
    public Integer DeleteReservation(Map param) {
        return reservationMapper.DeleteReservation(param);
    }
}
