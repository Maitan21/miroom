package co.kr.miroom.board.controller;

import co.kr.miroom.board.service.BoardService;
import co.kr.miroom.board.service.ReservationService;
import co.kr.miroom.board.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class EventController {

    @Autowired
    private BoardService boardService;

    @Autowired
    private ReservationService reservationService;

    @RequestMapping(value="/dashboard/newReservation", method = RequestMethod.POST)
    public String newReservation(Model model, HttpServletRequest request) {

        // 중복 파라미터
        Map reservation =  new HashMap();
        reservation.put("Today",request.getParameter("Today"));
        reservation.put("CheckInTime",request.getParameter("CheckInTime"));
        reservation.put("CheckOutTime",request.getParameter("CheckOutTime"));
        reservation.put("room_id",request.getParameter("selectRoom"));

        // 중복 체크
        if(reservationService.CheckDuplication(reservation) == 0) {
            // 예약자 등록
            Map param = new HashMap();
            param.put("reserver_name", request.getParameter("ReservationName"));
            param.put("reserver_phone", request.getParameter("ReservationPhone"));
            reservationService.addReserver(param);

            // 예약등록
            String check_in = request.getParameter("Today")+" "+ request.getParameter("CheckInTime");
            String check_out = request.getParameter("Today")+" "+ request.getParameter("CheckOutTime");
            reservation.put("check_in", check_in);
            reservation.put("check_out",check_out);
            reservation.put("reserver_id", param.get("reserver_id"));
            reservation.put("person",request.getParameter("selectPerson"));
            reservationService.addReservation(reservation);
            model.addAttribute("msg","예약 되었습니다.");
            model.addAttribute("url","/dashboard/reservationtable");
        }
        else {
            model.addAttribute("msg","해당 시간에 예약이 불가합니다.");
            model.addAttribute("url","/dashboard/reservationtable");
        }
        return "handler/ReservationRedirect";
    }

    @RequestMapping(value="/dashboard/deleteReservation", method = RequestMethod.GET)
    public String deleteReservation(Model model, HttpServletRequest request) {

        // 중복 파라미터
        Map reservation =  new HashMap();
        System.out.println(request.getParameter("id"));

        reservation.put("reserve_id",request.getParameter("id"));

        if(reservationService.DeleteReservation(reservation)!=0)
        {
            model.addAttribute("msg","예약내역을 삭제하였습니다.");
            model.addAttribute("url","/dashboard/reservationtable");
        }
        else {
            model.addAttribute("msg", "예약내역 삭제에 실패하였습니다.");
            model.addAttribute("url", "/dashboard/reservationtable");
        }

        return "handler/ReservationRedirect";
    }

    @RequestMapping(value="/dashboard/updateReservation", method = RequestMethod.POST)
    public String ModifyReservationDo(Model model, HttpServletRequest request) {

        // 중복 파라미터
        Map reservation =  new HashMap();
        reservation.put("Today",request.getParameter("Today"));
        reservation.put("CheckInTime",request.getParameter("CheckInTime"));
        reservation.put("CheckOutTime",request.getParameter("CheckOutTime"));
        reservation.put("room_id",request.getParameter("selectRoom"));

        reservation.put("reserve_id", request.getParameter("ReservationID"));
        reservation.put("reserver_name", request.getParameter("ReservationName"));
        reservation.put("reserver_phone", request.getParameter("ReservationPhone"));
        reservation.put("reserver_id",request.getParameter("reserverID"));
        String check_in = request.getParameter("Today")+" "+ request.getParameter("CheckInTime");
        String check_out = request.getParameter("Today")+" "+ request.getParameter("CheckOutTime");
        reservation.put("check_in", check_in);
        reservation.put("check_out", check_out);

        if(reservationService.UpdateReservation(reservation) != 0) {
            model.addAttribute("msg", "수정 하였습니다.");
            model.addAttribute("url", "/dashboard/reservationtable");
        }
        else {
            model.addAttribute("msg","수정에 실패하였습니다.");
            model.addAttribute("url","/dashboard/reservationtable");
        }

        return "handler/ReservationRedirect";
    }
}
