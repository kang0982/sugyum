package com.kang.confing;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.kang
 * 3. 작성일 : 2020. 9. 11 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Configuration
public class WebConfig implements WebMvcConfigurer {
	
	/**
	 * webjar /asset 경로로 추가
	 * */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/asset/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
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

}
