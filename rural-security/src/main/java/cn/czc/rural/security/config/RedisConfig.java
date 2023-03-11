package cn.czc.rural.security.config;

import cn.czc.rural.common.config.BaseRedisConfig;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Configuration;

/**
 * Redis配置类
 * @author czc 
 */
@EnableCaching
@Configuration
public class RedisConfig extends BaseRedisConfig {

}
