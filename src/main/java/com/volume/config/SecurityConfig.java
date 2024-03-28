package com.volume.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
public class SecurityConfig {
	
	/*
	 * @Bean SecurityFilterChain securityFilterChain(HttpSecurity http) throws
	 * Exception { http.authorizeHttpRequests((requests) ->
	 * requests.anyRequest().authenticated()); http.sessionManagement((session) ->
	 * session.sessionCreationPolicy(SessionCreationPolicy.STATELESS));
	 * http.csrf(AbstractHttpConfigurer::disable); return http.build(); }
	 */

	@Bean
	SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception { // 필터체인 메서드
		
		// 여기부터 시작
		http
		.csrf((csrf) -> csrf 
		.disable()) // 사용하지 않겠다는 뜻 - 쓰려면 여기 두문장 제거
				// csrf는 웹 보안 조작된 정보로 웹사이트가 실행되도록 속이는 공격기술
				// 스프링 시큐리티는 이러한 공격을 방지하기 위해 CSRF토큰을 발행하여 폼 전송시에 해당 토큰을 함께 전송해야 한다
				// post방식에서 사용하려면 <input type="hidden" name="${_csrf.parameterName}"
				// value="${_csrf.token}"/> 처럼 토큰을 넘겨줘야함
				.authorizeHttpRequests((auth) -> auth
						.requestMatchers("/**")
						.permitAll());
				// 주석처리하면 사이트 접속전 인증뜰거임
				// 인증되지 않은 모든 페이지의 요청을 허락한다
				// 시큐리티를 사용하면 모든페이지에 인증을 해야하는데 /**로 루트밑 폴더 파일을 인증없이 접근할수있도록 허가해줌
				
				http.formLogin((formLogin) -> formLogin
						.usernameParameter("users_id") // 20240304 추가
						.passwordParameter("users_pw") // 기본은 username/password인데 id/pw로 쓰고싶음 그러면 여길 id/pw로 수정 후 jsp수정
						.loginPage("/member/login") // 내가 만든 로그인페이지로 연결
						.defaultSuccessUrl("/volume/")); // 로그인 성공시 루트로 이동
				// 로그인 요청 URL과 로그인 성공시 메인으로 이동한다
				
				// 로그아웃 처리
				http.logout((logout) -> logout
						.logoutRequestMatcher(new AntPathRequestMatcher("/user/logout"))
						.logoutSuccessUrl("/")
						.invalidateHttpSession(true));
				// 로그아웃 사용자 URI주소와 로그아웃 성공시 메인으로 이동하고 모든 세션을 제거한다.
		
		return http.build();
	}

	@Bean
	public PasswordEncoder passwordEncoder() { // 패스워드를 암호화
		return new BCryptPasswordEncoder();
	}

	
	@Bean // 리턴된 값을 사용할 수 있도록 객체로 등록
	public HttpFirewall getHttpFirewall() {
		return new DefaultHttpFirewall();
	}

}
