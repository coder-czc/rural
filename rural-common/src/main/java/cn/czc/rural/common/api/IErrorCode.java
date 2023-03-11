package cn.czc.rural.common.api;

/**
 * API返回码接口
 * @author czc
 */
public interface IErrorCode {
    /**
     * 返回码
     */
    long getCode();

    /**
     * 返回信息
     */
    String getMessage();
}
