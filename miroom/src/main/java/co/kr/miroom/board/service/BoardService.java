package co.kr.miroom.board.service;

import co.kr.miroom.board.vo.BoardVO;

import java.util.List;

public interface BoardService {

    //방 목록 조회
    public List<BoardVO> selectRoomList(String username) throws Exception;
    

    //예약 가능한 방 수
    //TODO 통계
}
