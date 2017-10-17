package com.cookbook.configuration;

import com.cookbook.utilities.constants.Constants;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.context.support.GenericWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

public class ApplicationInitializer implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
        context.setServletContext(servletContext);
        ServletRegistration.Dynamic dispatcher = servletContext.addServlet("dispatcher", new DispatcherServlet(context));
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/");

        ServletRegistration.Dynamic uploader = servletContext.addServlet("uploader", new DispatcherServlet(new GenericWebApplicationContext()));
        uploader.setLoadOnStartup(1);
        MultipartConfigElement multipartConfigElement = new MultipartConfigElement("/tmp", Constants.FILE_UPLOAD_SIZE, 2 * Constants.FILE_UPLOAD_SIZE, Constants.FILE_UPLOAD_SIZE / 2);
        uploader.setMultipartConfig(multipartConfigElement);
    }
}
