package com.swan.k8s.samples.services.alpha;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/api/alpha")
@SpringBootApplication
public class AlphaApplication {

    @Value("${services.beta.url}")
    private String serviceBetaUrl;

    public static void main(String[] args) {
        SpringApplication.run(AlphaApplication.class, args);
    }

    @GetMapping("/hello")
    public ResponseEntity<String> hello() {
        return ResponseEntity.ok("Hello from alpha!");
    }

    @GetMapping("/beta")
    public ResponseEntity<String> helloFromBeta() {
        System.out.println("Service beta url: " + serviceBetaUrl);
        RestTemplate restTemplate = new RestTemplate();
        String helloFromBeta = restTemplate.getForObject(serviceBetaUrl, String.class);
        return ResponseEntity.ok(helloFromBeta);
    }
}
