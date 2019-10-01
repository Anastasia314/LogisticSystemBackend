package by.bsuir.logisticback.controller.filter;

import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@javax.servlet.annotation.WebFilter
public class WebFilter extends OncePerRequestFilter {
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response,
                                    FilterChain filterChain) throws ServletException, IOException {
        setHeadersForResponse(request, response);
        filterChain.doFilter(request, response);
    }

    private void setHeadersForResponse(HttpServletRequest req, HttpServletResponse resp) {
        resp.addHeader("Access-Control-Allow-Origin", "*");
        resp.addHeader("Access-Control-Allow-Methods", "GET, OPTIONS, HEAD, PUT, POST, DELETE");
        resp.addHeader("Access-Control-Allow-Headers", "Authorization, Content-Type");
        if (req.getMethod().equals("OPTIONS")) {
            resp.setStatus(HttpServletResponse.SC_OK);
        }
    }
}
