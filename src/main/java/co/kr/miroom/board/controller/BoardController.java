package co.kr.miroom.board.controller;

import co.kr.miroom.board.service.BoardService;
import co.kr.miroom.board.vo.BoardVO;
import co.kr.miroom.manager.vo.CustomUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class BoardController {

    @Autowired
    private BoardService boardService;


    //TODO Main
    @RequestMapping("/dashboard/home")
    public ModelAndView ViewHome(Authentication authentication) throws Exception{

        UserDetails userVO = (UserDetails) authentication.getPrincipal();
        System.out.println("ID정보 : " + userVO.getUsername());
        ModelAndView mv = new ModelAndView("/dashboard/home");

        //최종 전달할 객체
        ArrayList<Object> list = new ArrayList<Object>();

        //list 1 : 방목록
        List<BoardVO> room = boardService.selectRoomList(userVO.getUsername());
        list.add(room);


        //list 2 : 통계값


        //전달
        mv.addObject("list",list);

        return mv;
    }

    //TODO 회의실 현황
    @RequestMapping("/dashboard/roomtable")
    public ModelAndView RoomTable(Authentication authentication) throws Exception{

        UserDetails userVO = (UserDetails) authentication.getPrincipal();
        System.out.println("ID정보 : " + userVO.getUsername());
        ModelAndView mv = new ModelAndView("/dashboard/roomTable");

        //최종 전달할 객체
        ArrayList<Object> list = new ArrayList<Object>();

        //list 1 : 방목록
        List<BoardVO> room = boardService.selectRoomList(userVO.getUsername());
        list.add(room);

        //list 2 : 통계값


        //전달
        mv.addObject("list",list);

        return mv;
    }


    //TODO 예약현황
    @RequestMapping("/dashboard/reservationtable")
    public String reservationTable() {
        return "/dashboard/reservationTable";
    }
}