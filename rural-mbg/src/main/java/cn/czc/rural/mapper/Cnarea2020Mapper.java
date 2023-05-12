package cn.czc.rural.mapper;

import cn.czc.rural.model.Cnarea2020;
import cn.czc.rural.model.Cnarea2020Example;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Cnarea2020Mapper {
    long countByExample(Cnarea2020Example example);

    int deleteByExample(Cnarea2020Example example);

    int deleteByPrimaryKey(Integer id);

    int insert(Cnarea2020 row);

    int insertSelective(Cnarea2020 row);

    List<Cnarea2020> selectByExample(Cnarea2020Example example);

    Cnarea2020 selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("row") Cnarea2020 row, @Param("example") Cnarea2020Example example);

    int updateByExample(@Param("row") Cnarea2020 row, @Param("example") Cnarea2020Example example);

    int updateByPrimaryKeySelective(Cnarea2020 row);

    int updateByPrimaryKey(Cnarea2020 row);
}