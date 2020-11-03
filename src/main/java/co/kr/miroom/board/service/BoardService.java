package co.kr.miroom.board.service;

import co.kr.miroom.board.mapper.ReservationMapper;
import co.kr.miroom.board.vo.BoardVO;
import co.kr.miroom.board.vo.ReservationVO;

import java.util.List;

public interface BoardService {

    //방 목록 조회
    public List<BoardVO> selectRoomList() throws Exception;

}
