package de.danielbischoff.helloworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by Daniel on 04.08.15.
 */
@SpringBootApplication
public class Application {

    /**
     * Starts the spring application
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}