package cn.czc.rural.search.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

/**
 * MyBatis相关配置
 * @author czc
 */
@Configuration
@MapperScan({"cn.czc.rural.mapper","cn.czc.rural.search.dao"})
public class MyBatisConfig {
}
