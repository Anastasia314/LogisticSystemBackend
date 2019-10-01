package by.bsuir.logisticback.controller.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

@Component
@Qualifier(value = "authenticationManager")
public class AuthenticationManagerImpl implements AuthenticationManager {

    private static final String BAD_CREDENTIALS = "Wrong login or password";

    @Autowired
    @Qualifier("detailsService")
    UserDetailsService detailsService;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String password = authentication.getCredentials().toString();
        UserDetails details = detailsService.loadUserByUsername(authentication.getName());

        if (!details.getPassword().equals(password)) {
            throw new BadCredentialsException(BAD_CREDENTIALS);
        }

        return new UsernamePasswordAuthenticationToken(details, details.getPassword(), details.getAuthorities());
    }
}
