package cn.czc.rural.common.exception;

import cn.czc.rural.common.api.IErrorCode;

/**
 * 断言处理类，用于抛出各种API异常
 * @author czc 
 */
public class Asserts {
    public static void fail(String message) {
        throw new ApiException(message);
    }

    public static void fail(IErrorCode errorCode) {
        throw new ApiException(errorCode);
    }
}
