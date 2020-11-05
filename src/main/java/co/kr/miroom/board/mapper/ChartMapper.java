package co.kr.miroom.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface ChartMapper {

    List<HashMap<String,Integer>>Chart7days() throws  Exception;

    Integer CountToday() throws Exception;

    Integer CountWeek() throws Exception;

    Integer CountMonth() throws Exception;
}
