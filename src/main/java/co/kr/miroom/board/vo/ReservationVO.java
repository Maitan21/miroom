package co.kr.miroom.board.vo;

import lombok.Data;

import java.util.Date;

@Data
public class ReservationVO {
    private int reserve_id;
    private String check_in_Date;
    private String check_in_Hour;
    private String check_in_Min;
    private String check_out_Date;
    private String check_out_Hour;
    private String check_out_Min;
    private String reserver_name;
    private String reserver_phone;
    private String room_name;
    private String Times;
    private int room_id;
    private int reserver_id;

    public String getTimes() {
        return Times;
    }

    public void setTimes(String times) {
        Times = times;
    }

    public int getReserve_id() {
        return reserve_id;
    }

    public void setReserve_id(int reserve_id) {
        this.reserve_id = reserve_id;
    }

    public String getCheck_in_Date() {
        return check_in_Date;
    }

    public void setCheck_in_Date(String check_in_Date) {
        this.check_in_Date = check_in_Date;
    }

    public String getCheck_in_Hour() {
        return check_in_Hour;
    }

    public void setCheck_in_Hour(String check_in_Hour) {
        this.check_in_Hour = check_in_Hour;
    }

    public String getCheck_in_Min() {
        return check_in_Min;
    }

    public void setCheck_in_Min(String check_in_Min) {
        this.check_in_Min = check_in_Min;
    }

    public String getCheck_out_Date() {
        return check_out_Date;
    }

    public void setCheck_out_Date(String check_out_Date) {
        this.check_out_Date = check_out_Date;
    }

    public String getCheck_out_Hour() {
        return check_out_Hour;
    }

    public void setCheck_out_Hour(String check_out_Hour) {
        this.check_out_Hour = check_out_Hour;
    }

    public String getCheck_out_Min() {
        return check_out_Min;
    }

    public void setCheck_out_Min(String check_out_Min) {
        this.check_out_Min = check_out_Min;
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

    public String getRoom_name() {
        return room_name;
    }

    public void setRoom_name(String room_name) {
        this.room_name = room_name;
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
