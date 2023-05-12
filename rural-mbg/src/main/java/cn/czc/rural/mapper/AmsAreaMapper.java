package cn.czc.rural.mapper;

import cn.czc.rural.model.AmsArea;
import cn.czc.rural.model.AmsAreaExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsAreaMapper {
    long countByExample(AmsAreaExample example);

    int deleteByExample(AmsAreaExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsArea row);

    int insertSelective(AmsArea row);

    List<AmsArea> selectByExample(AmsAreaExample example);

    AmsArea selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("row") AmsArea row, @Param("example") AmsAreaExample example);

    int updateByExample(@Param("row") AmsArea row, @Param("example") AmsAreaExample example);

    int updateByPrimaryKeySelective(AmsArea row);

    int updateByPrimaryKey(AmsArea row);
}