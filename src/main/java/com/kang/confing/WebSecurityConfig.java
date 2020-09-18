package com.kang.confing;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * @author hyunjin.kang
 *
 */
@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	

	@Override
	public void configure(WebSecurity web) throws Exception	{
		web.ignoring().antMatchers("/asset/**").antMatchers("/webjars/**");
	}
	
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
        	.csrf().disable()
        	
        		.authorizeRequests()
            	.antMatchers("/main/**").access("hasRole('ADMIN')")
            	.antMatchers("/error/**").permitAll()
            	.antMatchers("/test/**").permitAll()
                .antMatchers("/**").authenticated()
            .and()
            	.formLogin()
                .loginPage("/login")
                .failureUrl("/login?error=true")                
    			.defaultSuccessUrl("/")    			
                .permitAll()
            .and()
	            .logout()	
	            .logoutUrl("/logout")
	            .logoutSuccessUrl("/")

            ;
        
    }

}
