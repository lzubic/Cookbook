package com.cookbook.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
    private final SuccessfulLoginHandler successfulLoginHandler;
    private final AuthenticationConfiguration authenticationConfiguration;

    @Autowired
    public SecurityConfiguration(SuccessfulLoginHandler successfulLoginHandler, AuthenticationConfiguration authenticationConfiguration) {
        this.successfulLoginHandler = successfulLoginHandler;
        this.authenticationConfiguration = authenticationConfiguration;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/resources/**").permitAll()
                .antMatchers("/admin/**").hasRole("ADMIN")
                .antMatchers("/", "/home").hasRole("USER")
                .antMatchers("/login*", "/register").anonymous()
                .anyRequest().authenticated()
                .and()
                .formLogin().loginPage("/login").successHandler(successfulLoginHandler).permitAll()
                .and()
                .logout().permitAll();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("admin").password("admin").roles("ADMIN");
        auth.authenticationProvider(authenticationConfiguration);
    }
}
