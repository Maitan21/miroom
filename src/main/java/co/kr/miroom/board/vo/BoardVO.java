package co.kr.miroom.board.vo;

public class BoardVO {

    private String ROOM_NAME;
    private String FACILITY;
    private String SIZE;
    private int CAPACITY;
    private int STATUS;

    public String getROOM_NAME() {
        return ROOM_NAME;
    }

    public void setROOM_NAME(String ROOM_NAME) {
        this.ROOM_NAME = ROOM_NAME;
    }

    public String getFACILITY() {
        return FACILITY;
    }

    public void setFACILITY(String FACILITY) {
        this.FACILITY = FACILITY;
    }

    public String getSIZE() {
        return SIZE;
    }

    public void setSIZE(String SIZE) {
        this.SIZE = SIZE;
    }

    public int getCAPACITY() {
        return CAPACITY;
    }

    public void setCAPACITY(int CAPACITY) {
        this.CAPACITY = CAPACITY;
    }

    public int getSTATUS() {
        return STATUS;
    }

    public void setSTATUS(int STATUS) {
        this.STATUS = STATUS;
    }
}
