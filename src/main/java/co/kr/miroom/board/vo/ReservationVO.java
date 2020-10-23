package co.kr.miroom.board.vo;

import javax.xml.crypto.Data;
import java.util.Date;

public class ReservationVO {
    private int reserve_id;
    private Date check_in;
    private Date check_out;
    private String reserver_name;
    private String reserver_phone;
    private String room_name;
    private int room_id;
    private int reserver_id;

    public String getRoom_name() {
        return room_name;
    }

    public void setRoom_name(String room_name) {
        this.room_name = room_name;
    }

    public int getReserve_id() {
        return reserve_id;
    }

    public void setReserve_id(int reserve_id) {
        this.reserve_id = reserve_id;
    }

    public Date getCheck_in() {
        return check_in;
    }

    public void setCheck_in(Date check_in) {
        this.check_in = check_in;
    }

    public Date getCheck_out() {
        return check_out;
    }

    public void setCheck_out(Date check_out) {
        this.check_out = check_out;
    }

    public String getReserver_name() {
        return reserver_name;
    }

    public void setReserver_name(String reserver_name) {
        this.reserver_name = reserver_name;
    }

    public String getReserver_phone() {
        return reserver_phone;
    }

    public void setReserver_phone(String reserver_phone) {
        this.reserver_phone = reserver_phone;
    }

    public int getRoom_id() {
        return room_id;
    }

    public void setRoom_id(int room_id) {
        this.room_id = room_id;
    }

    public int getReserver_id() {
        return reserver_id;
    }

    public void setReserver_id(int reserver_id) {
        this.reserver_id = reserver_id;
    }
}
