package by.bsuir.logisticback.controller.filter;

import by.bsuir.logisticback.controller.security.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class AuthenticationFilter extends GenericFilterBean {

    @Autowired
    @Qualifier("detailsService")
    private UserDetailsService userDetailsService;

    @Autowired
    @Qualifier(value = "authenticationManager")
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtUtil jwtUtil;

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String token = httpServletRequest.getHeader("Authorization");

        if (token != null) {
            String login = jwtUtil.getUserName(token);
            Authentication req = (Authentication) userDetailsService.loadUserByUsername(login);
            Authentication result = authenticationManager.authenticate(req);
            SecurityContextHolder.getContext().setAuthentication(result);
        }

        filterChain.doFilter(request, response);
    }

}
