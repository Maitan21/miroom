package co.kr.miroom.board.controller;

import co.kr.miroom.board.service.BoardService;
import co.kr.miroom.board.service.ChartService;
import co.kr.miroom.board.service.ReservationService;
import co.kr.miroom.board.vo.BoardVO;
import co.kr.miroom.board.vo.ReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class ApiController {

    @Autowired
    BoardService boardService;

    @Autowired
    ReservationService reservationService;

    @Autowired
    ChartService chartService;

    @RequestMapping(value="/api/ReservationList")
    public List<ReservationVO> apiReservationList() throws Exception {
        return reservationService.selectReservationList();
    }

    @RequestMapping(value="/api/RoomList")
    public List<BoardVO> apiRoomList() throws Exception {
        return boardService.selectRoomList();
    }

}
