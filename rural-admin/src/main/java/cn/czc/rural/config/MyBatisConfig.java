package cn.czc.rural.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * MyBatis相关配置
 * @author czc
 */
@Configuration
@EnableTransactionManagement
@MapperScan({"cn.czc.rural.mapper","cn.czc.rural.dao"})
public class MyBatisConfig {
}
