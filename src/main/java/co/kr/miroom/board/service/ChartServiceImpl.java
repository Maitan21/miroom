package co.kr.miroom.board.service;


import co.kr.miroom.board.mapper.ChartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class ChartServiceImpl implements ChartService {

    @Autowired
    private ChartMapper chartMapper;

    @Override
    public List<HashMap<String, Integer>> Chart7days() throws Exception {
        return chartMapper.Chart7days();
    }

    @Override
    public Integer CountToday() throws Exception {
        return chartMapper.CountToday();
    }

    @Override
    public Integer CountWeek() throws Exception {
        return chartMapper.CountWeek();
    }

    @Override
    public Integer CountMonth() throws Exception {
        return chartMapper.CountMonth();
    }


}
