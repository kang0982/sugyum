package com.sugyum.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sugyum.util.HTMLCharacterEscapes;
import com.navercorp.lucy.security.xss.servletfilter.XssEscapeServletFilter;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.sugyum
 * 3. 작성일 : 2020. 9. 11 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Configuration
public class WebConfig implements WebMvcConfigurer {
	
	/**
	 * webjar 
	 * */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
	}

    /**
    * Initialise Tiles on application startup and identify the location of the tiles configuration file, tiles.xml.
    * @return tiles configurer
    */
    @Bean
    public TilesConfigurer tilesConfigurer() {
	    final TilesConfigurer configurer = new TilesConfigurer();
	    configurer.setDefinitions(new String[] {"/WEB-INF/tiles/tiles.xml"});
	    configurer.setCheckRefresh(true);
	    return configurer;
    }

    /**
    * Introduce a Tiles view resolver, this is a convenience implementation that extends URLBasedViewResolver.
    * @return tiles view resolver
    */
    @Bean
    public TilesViewResolver tilesViewResolver() {
	    final TilesViewResolver resolver = new TilesViewResolver();
	    resolver.setViewClass(TilesView.class);
	    resolver.setOrder(1);
	    return resolver;
    }
    
    
 	/**
 	 * Xss 공격
 	 * */
     @SuppressWarnings({ "unchecked", "rawtypes" })
 	// Form data
     @Bean
     public FilterRegistrationBean getXssEscapeServletFilterRegistrationBean() {
 		FilterRegistrationBean registrationBean = new FilterRegistrationBean();
         registrationBean.setFilter(new XssEscapeServletFilter());
         registrationBean.setOrder(1);
         registrationBean.addUrlPatterns("/*"); //filter를 거칠 url patterns
         return registrationBean;
     }

     /**
      * html 캐릭터 변환
      * */
     @Bean
     public HttpMessageConverter<?> escapingConverter() {
         ObjectMapper objectMapper = new ObjectMapper();
         objectMapper.getFactory().setCharacterEscapes(new HTMLCharacterEscapes());
//       objectMapper.registerModule(new JavaTimeModule());
//       objectMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);

         MappingJackson2HttpMessageConverter escapingConverter = new MappingJackson2HttpMessageConverter();
         escapingConverter.setObjectMapper(objectMapper);

         return escapingConverter;
     }
     
}
