package cn.czc.rural.service;

import cn.czc.rural.dto.AmsAreaParam;
import cn.czc.rural.model.AmsArea;

import java.util.List;

/**
 * 辖区管理Service
 * @author czc
 */
public interface AmsAreaService {
    /**
     * 添加区域
     * @param amsAreaParam
     * @return
     */
    AmsArea add(AmsAreaParam amsAreaParam);

    /**
     * 修改区域
     * @param id
     * @param amsAreaParam
     * @return
     */
    int update(Long id, AmsAreaParam amsAreaParam);

    /**
     * 根据ID获取区域详情
     * @param id
     * @return
     */
    AmsArea getItem(Long id);

    /**
     * 根据ID删除区域
     * @param id
     * @return
     */
    int delete(Long id);

    /**
     * 分页查询后台菜单
     */
    List<AmsArea> list(Long parentId, Integer pageSize, Integer pageNum);
}
