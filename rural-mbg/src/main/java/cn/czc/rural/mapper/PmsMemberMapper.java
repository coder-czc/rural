package cn.czc.rural.mapper;

import cn.czc.rural.model.PmsMember;
import cn.czc.rural.model.PmsMemberExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PmsMemberMapper {
    long countByExample(PmsMemberExample example);

    int deleteByExample(PmsMemberExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PmsMember row);

    int insertSelective(PmsMember row);

    List<PmsMember> selectByExample(PmsMemberExample example);

    PmsMember selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("row") PmsMember row, @Param("example") PmsMemberExample example);

    int updateByExample(@Param("row") PmsMember row, @Param("example") PmsMemberExample example);

    int updateByPrimaryKeySelective(PmsMember row);

    int updateByPrimaryKey(PmsMember row);
}