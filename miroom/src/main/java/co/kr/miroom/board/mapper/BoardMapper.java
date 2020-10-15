package co.kr.miroom.board.mapper;

import co.kr.miroom.board.vo.BoardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {

    List<BoardVO> selectRoomList(String username) throws Exception;
}
