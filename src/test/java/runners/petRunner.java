package runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class petRunner {

    @Karate.Test
    Karate regression(){
        return Karate
                .run("classpath:PetfinderCollection/petfinderAPI.feature")
                .tags("@regression").relativeTo(getClass());
    }
    @Karate.Test
    Karate smoke() {
        return Karate
                .run("classpath:PetfinderCollection/petfinderAPI.feature")
                .tags("@smoke").relativeTo(getClass());
    }

}

