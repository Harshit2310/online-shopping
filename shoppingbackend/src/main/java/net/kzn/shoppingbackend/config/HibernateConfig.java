package net.kzn.shoppingbackend.config;

import java.util.Properties;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages = { "net.kzn.shoppingbackend.dto" })
@EnableTransactionManagement
public class HibernateConfig {

	// Change as per DBMS
	private final static String Database_URL = "jdbc:sqlserver://MSSQLSERVER\\localhost;databaseName=";
	private final static String Database_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private final static String Database_DIALECT = "org.hibernate.dialect.SQLServerDialect";
	private final static String Database_USERNAME = "Shop_Owner";
	private final static String Database_PASSWORD = "Shop_Owner!";

	// datasaource bean will be available
	@Bean
	public BasicDataSource getDataSource() {

		BasicDataSource dataSource = new BasicDataSource();

		dataSource.setDriverClassName(Database_DRIVER);
		dataSource.setUrl(Database_URL);
		dataSource.setUsername(Database_USERNAME);
		dataSource.setPassword(Database_PASSWORD);

		return dataSource;
	}

	// sessionFactory bean will be available
	@Bean
	public SessionFactory getSessionFactory(BasicDataSource dataSource) {
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource);

		builder.addProperties(gethibernateProperties());
		builder.scanPackages("net.kzn.shoppingbackend.dto");
		return builder.buildSessionFactory();

	}

	// All the hibernate properties will be return in this method
	private Properties gethibernateProperties() {
		// TODO Auto-generated method stub
		Properties properties = new Properties();

		properties.put("hibernate.dialect", Database_DIALECT);
		properties.put("hibernate.show_sql", "true");
		properties.put("hiberntae.format_sql", "true");
		return properties;
	}

	//transactionmanager bean
	@Bean
	public HibernateTransactionManager getTransactionManger(SessionFactory sessionFactory) {

		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}
}
