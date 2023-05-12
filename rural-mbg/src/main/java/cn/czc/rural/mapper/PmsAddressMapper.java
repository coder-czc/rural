package cn.czc.rural.mapper;

import cn.czc.rural.model.PmsAddress;
import cn.czc.rural.model.PmsAddressExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PmsAddressMapper {
    long countByExample(PmsAddressExample example);

    int deleteByExample(PmsAddressExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PmsAddress row);

    int insertSelective(PmsAddress row);

    List<PmsAddress> selectByExample(PmsAddressExample example);

    PmsAddress selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("row") PmsAddress row, @Param("example") PmsAddressExample example);

    int updateByExample(@Param("row") PmsAddress row, @Param("example") PmsAddressExample example);

    int updateByPrimaryKeySelective(PmsAddress row);

    int updateByPrimaryKey(PmsAddress row);
}