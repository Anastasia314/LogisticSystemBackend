package by.bsuir.logisticback.controller.security.util;

import by.bsuir.logisticback.model.entity.User;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.Date;

@Service

public class JwtUtil {
    private static final String SECRET_KEY = "Secret";

    private static final Long START_SECONDS = 1466796822L;

    private static final Long END_SECONDS = 1466796822L;

    public String createToken(User user) {
        Claims claims = Jwts.claims().setSubject(user.getLogin());
        return Jwts.builder()
                .setClaims(claims)
                .setIssuedAt(Date.from(Instant.ofEpochSecond(START_SECONDS)))
                .setExpiration(Date.from(Instant.ofEpochSecond(END_SECONDS)))
                .signWith(SignatureAlgorithm.HS256, SECRET_KEY)
                .compact();
    }

    public String getUserName(String token) {
        return Jwts.parser().setSigningKey(SECRET_KEY).parseClaimsJws(token).getBody().getSubject();
    }
}
