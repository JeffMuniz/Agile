package br.com.mac.funcionario.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Setter
@Getter
@Configuration
@ConfigurationProperties("spring.datasource-controle.hikari")
public class HikariPropertiesControle {

  private String poolName;

  private int minimumIdle;

  private int maximumPoolSize;

  private int idleTimeout;

  private int connectionTimeout;

  private String transactionIsolation;
}
