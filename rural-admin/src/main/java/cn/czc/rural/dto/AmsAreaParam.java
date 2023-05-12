package cn.czc.rural.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotEmpty;

/**
 * 添加区域参数
 * @author czc
 */
@Getter
@Setter
public class AmsAreaParam {
    @NotEmpty
    @ApiModelProperty(value = "名称", required = true)
    private String name;
    @NotEmpty
    @ApiModelProperty(value = "简称", required = true)
    private String shorName;
    @ApiModelProperty(value = "组合名称")
    private String mergeName;
    @ApiModelProperty(value = "拼音")
    private String pinYin;
    @ApiModelProperty(value = "父级区域代码")
    private String parentCode;
    @ApiModelProperty(value = "区域代码")
    private String areaCode;
    @ApiModelProperty(value = "邮政编码")
    private String zipCode;
    @ApiModelProperty(value = "层级")
    private String level;
}
