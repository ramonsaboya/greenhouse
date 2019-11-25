package demo;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.springframework.boot.test.context.SpringBootTest;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit.jupiter.SpringExtension;
//import org.springframework.test.context.junit4.SpringRunner;

import io.restassured.module.mockmvc.RestAssuredMockMvc;

import demo.model.Restaurant;
import demo.rest.RestaurantRestApi;
import demo.service.impl.RestaurantServiceImpl;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = RestaurantServiceApp.class)
public class UnitTestClasses {
    // @Test
    // public void checkStringRestaurantId(){
    // Restaurant r = new Restaurant();
    // assertEquals(r.getId(), null);
    // }
    @Autowired
    RestaurantRestApi restaurantRestApi;

    @MockBean
    RestaurantServiceImpl restaurantService;

    @BeforeAll
    public void setup() {
		RestAssuredMockMvc.standaloneSetup(restaurantRestApi);

		Mockito.when(restaurantService.getRestaurantByName("1L"))
				.thenReturn(new Restaurant());
	}
}