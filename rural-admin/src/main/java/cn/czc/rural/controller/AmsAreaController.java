package cn.czc.rural.controller;

import cn.czc.rural.common.api.CommonResult;
import cn.czc.rural.dto.AmsAreaParam;
import cn.czc.rural.model.AmsArea;
import cn.czc.rural.service.AmsAreaService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@Api(tags = "AmsAreaController")
@Tag(name = "AmsAreaController", description = "辖区管理")
@RequestMapping("/area")
public class AmsAreaController {
    @Autowired
    private AmsAreaService areaService;

    @ApiOperation("添加区域")
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult<AmsArea> add(@Validated @RequestBody AmsAreaParam amsAreaParam) {
        AmsArea amsArea = areaService.add(amsAreaParam);
        if (amsArea == null) {
            return CommonResult.failed();
        }
        return CommonResult.success(amsArea);
    }

}
