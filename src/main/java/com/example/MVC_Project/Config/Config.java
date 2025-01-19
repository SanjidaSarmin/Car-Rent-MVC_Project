package com.example.MVC_Project.Config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class Config implements WebMvcConfigurer {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/*.css").addResourceLocations("/WEB-INF/css/");
		registry.addResourceHandler("/*.js").addResourceLocations("/WEB-INF/JS/");
		registry.addResourceHandler("/img/**").addResourceLocations("/WEB-INF/img/");
	}
}