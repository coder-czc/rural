package cn.czc.rural.mapper;

import cn.czc.rural.model.PmsHousehold;
import cn.czc.rural.model.PmsHouseholdExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PmsHouseholdMapper {
    long countByExample(PmsHouseholdExample example);

    int deleteByExample(PmsHouseholdExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PmsHousehold row);

    int insertSelective(PmsHousehold row);

    List<PmsHousehold> selectByExample(PmsHouseholdExample example);

    PmsHousehold selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("row") PmsHousehold row, @Param("example") PmsHouseholdExample example);

    int updateByExample(@Param("row") PmsHousehold row, @Param("example") PmsHouseholdExample example);

    int updateByPrimaryKeySelective(PmsHousehold row);

    int updateByPrimaryKey(PmsHousehold row);
}