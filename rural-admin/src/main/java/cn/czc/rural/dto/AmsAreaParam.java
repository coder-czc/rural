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
    private String shortName;
    @ApiModelProperty(value = "组合名称")
    private String mergerName;
    @ApiModelProperty(value = "拼音")
    private String pinyin;
    @ApiModelProperty(value = "父级区域代码")
    private Long parentCode;
    @ApiModelProperty(value = "区域代码")
    private Long areaCode;
    @ApiModelProperty(value = "邮政编码")
    private Integer zipCode;
    @ApiModelProperty(value = "层级")
    private Integer level;
}
