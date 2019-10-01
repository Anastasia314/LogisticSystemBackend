package by.bsuir.logisticback.controller.config;

import by.bsuir.logisticback.repository.config.RepositoryConfig;
import by.bsuir.logisticback.service.config.ServiceConfig;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletRegistration;

@Configuration
public class LogisticControllerConfig implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) {
        AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
        context.register(WebMvcConfig.class);
        context.register(ServiceConfig.class);
        context.register(RepositoryConfig.class);
        context.setServletContext(servletContext);
        ServletRegistration.Dynamic dispatcher = servletContext.addServlet("dispatcher", new DispatcherServlet(context));
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/");
    }
}
