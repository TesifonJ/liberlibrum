package es.ausiasmarch.liberlibrum.helper;

import java.time.Duration;
import java.time.Instant;
import java.util.Date;
import java.util.UUID;
import javax.crypto.SecretKey;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;


public class JWTHelper {
    private static final String SECRET = "fosforum_ausiasmarch_daw_2023_1234567890@@$$";
    private static final String ISSUER = "PHOSPHORUM DAW AUSIAS MARCH";

    private static SecretKey secretKey() {
        return Keys.hmacShaKeyFor((SECRET + ISSUER + SECRET).getBytes());
    }

    public static String generateJWT(String username) {

        Date currentTime = Date.from(Instant.now());
        Date expiryTime = Date.from(Instant.now().plus(Duration.ofSeconds(1500)));

        return Jwts.builder()
                .setId(UUID.randomUUID().toString())
                .setIssuer(ISSUER)
                .setIssuedAt(currentTime)
                .setExpiration(expiryTime)
                .claim("name", username)
                .signWith(secretKey())
                .compact();
    }

    public static String validateJWT(String strJWT) {
        try {
            Jws<Claims> headerClaimsJwt = Jwts.parserBuilder()
                    .setSigningKey(secretKey())
                    .build()
                    .parseClaimsJws(strJWT);

            Claims claims = headerClaimsJwt.getBody();

            if (claims.getExpiration().before(new Date())) {
                return null;
                // throw new JWTException("Error validating JWT: token expired");
            }

            if (!claims.getIssuer().equals(ISSUER)) {
                return null;
                // throw new JWTException("Error validating JWT: wrong issuer");
            }

            return claims.get("name", String.class);
        } catch (Exception e) {
            return null;
        }
    }

}
