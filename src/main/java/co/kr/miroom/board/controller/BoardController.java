package co.kr.miroom.board.controller;

import co.kr.miroom.board.mapper.ReservationMapper;
import co.kr.miroom.board.service.BoardService;
import co.kr.miroom.board.service.ChartService;
import co.kr.miroom.board.service.ReservationService;
import co.kr.miroom.board.vo.BoardVO;
import co.kr.miroom.board.vo.ReservationVO;
import co.kr.miroom.manager.vo.CustomUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.naming.spi.ResolveResult;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BoardController {

    @Autowired
    private BoardService boardService;

    @Autowired
    private ReservationService reservationService;

    @Autowired
    private ChartService chartService;

    //TODO Main
    @RequestMapping("/dashboard/home")
    public ModelAndView ViewHome(Authentication authentication) throws Exception{

        // UserDetails userVO = (UserDetails) authentication.getPrincipal(); //login session info
        ModelAndView mv = new ModelAndView("/dashboard/home");

        //최종 전달할 객체
        ArrayList<Object> list = new ArrayList<Object>();

        //list 1 : 방목록
        List<BoardVO> room = boardService.selectRoomList();

        List<HashMap<String,Integer>> ChartData = chartService.Chart7days();

        Integer cntToday = chartService.CountToday();
        Integer cntWeek = chartService.CountWeek();
        Integer cntMonth = chartService.CountMonth();



        list.add(room);

        //전달
        mv.addObject("list",list);
        mv.addObject("cntToday",cntToday);
        mv.addObject("cntWeek",cntWeek);
        mv.addObject("cntMonth",cntMonth);
        mv.addObject("chart",ChartData);

        return mv;
    }

    //TODO 회의실 현황
    @RequestMapping("/dashboard/roomtable")
    public ModelAndView RoomTable(Authentication authentication) throws Exception{

        // UserDetails userVO = (UserDetails) authentication.getPrincipal(); //login session info
        ModelAndView mv = new ModelAndView("/dashboard/roomTable");

        //최종 전달할 객체
        ArrayList<Object> list = new ArrayList<Object>();

        //list 1 : 방목록
        List<BoardVO> room = boardService.selectRoomList();
        list.add(room);

        //전달
        mv.addObject("list",list);

        return mv;
    }

    //TODO 회의실 스케쥴러
    @RequestMapping("/dashboard/scheduler")
    public ModelAndView scheduler(Authentication authentication) throws Exception{

        // UserDetails userVO = (UserDetails) authentication.getPrincipal(); //login session info
        ModelAndView mv = new ModelAndView("/dashboard/scheduler");

        //최종 전달할 객체
        ArrayList<Object> list = new ArrayList<Object>();

        //list 1 : 방목록
        List<BoardVO> room = boardService.selectRoomList();
        list.add(room);

        //list 2 : 오늘 예약자
        List<ReservationVO> reservations = reservationService.ReservationToday();
        list.add(reservations);


        //전달
        mv.addObject("list",list);

        return mv;
    }

    //TODO 설정
    @RequestMapping("/dashboard/setting")
    public ModelAndView setting(Authentication authentication) throws Exception{

        // UserDetails userVO = (UserDetails) authentication.getPrincipal(); //login session info
        ModelAndView mv = new ModelAndView("/dashboard/setting");

        //최종 전달할 객체
        ArrayList<Object> list = new ArrayList<Object>();

        //list 1 : 방목록
        List<BoardVO> room = boardService.selectRoomList();
        list.add(room);

        //list 2 : 예약자리스트
        List<ReservationVO> reservations = reservationService.selectReservationList();
        list.add(reservations);


        //전달
        mv.addObject("list",list);

        return mv;
    }


    //TODO 예약현황
    @RequestMapping("/dashboard/reservationtable")
    public ModelAndView reservationTable(Authentication authentication) throws Exception {

        ModelAndView mv = new ModelAndView("/dashboard/reservationTable");

        //최종 전달할 객체
        ArrayList<Object> list = new ArrayList<Object>();

        //list 1 : 방목록
        List<BoardVO> room = boardService.selectRoomList();
        list.add(room);

        //list 2 : 예약자리스트
        List<ReservationVO> reservations = reservationService.selectReservationList();
        list.add(reservations);


        //전달
        mv.addObject("list",list);

        return mv;
    }

        //TODO 차트
    @RequestMapping("/dashboard/chart")
    public String chart() {
        return "/dashboard/chart";
    }
}
