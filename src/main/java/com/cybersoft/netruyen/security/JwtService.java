package com.cybersoft.netruyen.security;

import java.util.Date;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Service
public class JwtService {
	public String generate(Authentication authentication) {
		return Jwts.builder()
				.setSubject(authentication.getName())
				.setIssuedAt(new Date())
				.setExpiration(new Date(new Date().getTime() + 864000000L))
				.signWith(SignatureAlgorithm.HS512, "secret")
				.compact();
	}

	public String verify(String token) {
		return Jwts.parser().setSigningKey("secret").parseClaimsJws(token).getBody().getSubject();
	}
}
