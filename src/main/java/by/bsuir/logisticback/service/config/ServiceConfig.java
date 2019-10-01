package by.bsuir.logisticback.service.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EnableJpaRepositories(basePackages = "by.bsuir.logisticback.repository")
@ComponentScan({"by.bsuir.logisticback.model.entity", "by.bsuir.logisticback.service.impl"})
public class ServiceConfig {
}
