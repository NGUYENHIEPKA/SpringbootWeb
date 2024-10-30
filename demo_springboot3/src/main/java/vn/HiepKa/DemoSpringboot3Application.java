package vn.HiepKa;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;

import vn.HiepKa.configs.MySiteMeshFilter;

@SpringBootApplication
public class DemoSpringboot3Application {

	public static void main(String[] args) {
		SpringApplication.run(DemoSpringboot3Application.class, args);
	}
	@Bean
	public FilterRegistrationBean<MySiteMeshFilter> sitemeshFilter () {
		
		FilterRegistrationBean<MySiteMeshFilter> resgisterBean = new FilterRegistrationBean<MySiteMeshFilter>();
		resgisterBean.setFilter(new MySiteMeshFilter());
		resgisterBean.addUrlPatterns("/*");
		
		return resgisterBean;
	}
}
