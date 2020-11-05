package co.kr.miroom.board.service;

import java.util.HashMap;
import java.util.List;



public interface ChartService {
    public List<HashMap<String,Integer>> Chart7days() throws  Exception;

    public Integer CountToday() throws Exception;

    public Integer CountWeek() throws Exception;

    public Integer CountMonth() throws Exception;
}
