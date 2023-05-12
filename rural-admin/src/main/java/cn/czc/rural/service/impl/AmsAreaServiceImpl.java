package cn.czc.rural.service.impl;

import cn.czc.rural.dto.AmsAreaParam;
import cn.czc.rural.mapper.AmsAreaMapper;
import cn.czc.rural.model.AmsArea;
import cn.czc.rural.model.AmsAreaExample;
import cn.czc.rural.service.AmsAreaService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class AmsAreaServiceImpl implements AmsAreaService {

    @Autowired
    private AmsAreaMapper areaMapper;

    @Override
    public AmsArea add(AmsAreaParam amsAreaParam) {
        AmsArea amsArea = new AmsArea();
        BeanUtils.copyProperties(amsAreaParam,amsArea);
        amsArea.setCreateTime(new Date());
        AmsAreaExample example = new AmsAreaExample();
        areaMapper.insert(amsArea);
        return amsArea;
    }

    @Override
    public int update(Long id, AmsAreaParam amsAreaParam) {
        return 0;
    }

    @Override
    public AmsArea getItem(Long id) {
        return null;
    }

    @Override
    public int delete(Long id) {
        return 0;
    }

    @Override
    public List<AmsArea> list(Long parentId, Integer pageSize, Integer pageNum) {
        return null;
    }
}
