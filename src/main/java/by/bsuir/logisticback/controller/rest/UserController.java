package by.bsuir.logisticback.controller.rest;


import by.bsuir.logisticback.controller.security.util.JwtUtil;
import by.bsuir.logisticback.model.dataholder.AuthenticationRequest;
import by.bsuir.logisticback.model.dataholder.AuthenticationResponse;
import by.bsuir.logisticback.model.entity.Role;
import by.bsuir.logisticback.model.entity.User;
import by.bsuir.logisticback.service.impl.RoleService;
import by.bsuir.logisticback.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@CrossOrigin
@RestController
@RequestMapping("/auth")
public class UserController {

    private static final String SIGN_UP_ROLE = "ADMIN";

    @Autowired
    private RoleService roleService;

    @Autowired
    private UserService userService;

    @Autowired
    private JwtUtil jwtUtil;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    public UserController(RoleService roleService, UserService userService, JwtUtil jwtUtil, BCryptPasswordEncoder passwordEncoder) {
        this.roleService = roleService;
        this.userService = userService;
        this.jwtUtil = jwtUtil;
        this.passwordEncoder = passwordEncoder;
    }

    @ResponseBody
    @PostMapping(value = "signup", consumes = {MediaType.ALL_VALUE})
    public ResponseEntity<AuthenticationResponse> signUp(@RequestBody AuthenticationRequest authRequest) {
        Optional<User> checkUser = userService.find(authRequest.getLogin());

        if (checkUser.isPresent()) {
            return new ResponseEntity<>(HttpStatus.CONFLICT);
        }

        User user = new User();
        user.setLogin(authRequest.getLogin());
        user.setPassword(passwordEncoder.encode(authRequest.getPassword()));

        Role role = roleService.find(SIGN_UP_ROLE);
        List<Role> userRoles = new ArrayList<>();
        userRoles.add(role);
        user.setRoles(userRoles);

        userService.save(user);

        String token = jwtUtil.createToken(user);
        List<String> roles = new ArrayList<>();
        roles.add(role.getRole().toUpperCase());

        AuthenticationResponse response = AuthenticationResponse.builder().token(token).roles(roles).build();

        return ResponseEntity.ok().body(response);
    }

    @ResponseBody
    @PostMapping(value = "signin", consumes = {MediaType.ALL_VALUE})
    public ResponseEntity<AuthenticationResponse> signIn(@RequestBody AuthenticationRequest authRequest) {
        Optional<User> foundUser = userService.find(authRequest.getLogin());
        if (foundUser.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        } else {
            if (passwordEncoder.matches(authRequest.getPassword(), foundUser.get().getPassword())) {
                String token = jwtUtil.createToken(foundUser.get());
                List<String> roles = new ArrayList<>();
                foundUser.get().getRoles().forEach(role -> roles.add(role.getRole().toUpperCase()));
                AuthenticationResponse response = AuthenticationResponse.builder().token(token).roles(roles).build();
                return ResponseEntity.ok().body(response);
            } else {
                return new ResponseEntity<>(HttpStatus.FORBIDDEN);
            }
        }
    }
}
