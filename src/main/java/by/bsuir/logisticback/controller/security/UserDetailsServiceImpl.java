package by.bsuir.logisticback.controller.security;

import by.bsuir.logisticback.model.entity.User;
import by.bsuir.logisticback.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Qualifier("detailsService")
public class UserDetailsServiceImpl implements UserDetailsService {

    private static final String USER_NOT_FOUND_EXCEPTION = "Wrong login or password";

    @Autowired
    private UserService userService;

    @Transactional
    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        User foundUser;

        Optional<User> user = userService.find(login);
        if (user.isEmpty()) {
            throw new UsernameNotFoundException(USER_NOT_FOUND_EXCEPTION);
        } else {
            foundUser = user.get();
        }

        List<GrantedAuthority> authorityList = new ArrayList<>();
        foundUser.getRoles().forEach(role -> authorityList.add(new SimpleGrantedAuthority(role.getRole().toUpperCase())));

        return new org.springframework.security.core.userdetails.User(foundUser.getLogin(), foundUser.getPassword(), authorityList);
    }
}
