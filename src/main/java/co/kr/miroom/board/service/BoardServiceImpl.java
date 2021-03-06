package co.kr.miroom.board.service;

import co.kr.miroom.board.mapper.BoardMapper;
import co.kr.miroom.board.vo.BoardVO;
import co.kr.miroom.board.vo.ReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BoardServiceImpl implements BoardService{

    @Autowired
    private BoardMapper boardMapper;

    @Override
    public List<BoardVO> selectRoomList() throws Exception {

        return boardMapper.selectRoomList();

    }

}
