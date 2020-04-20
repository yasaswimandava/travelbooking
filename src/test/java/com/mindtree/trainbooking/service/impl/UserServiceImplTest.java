package com.mindtree.trainbooking.service.impl;


import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;

import com.mindtree.trainbooking.controller.UserController;
import com.mindtree.trainbooking.entities.User;

//@RunWith(MockitoJUnitRunner.class)
//@WebMvcTest(UserController.class)
@SpringBootTest
public class UserServiceImplTest {
	
	@InjectMocks
	private UserController userController;

	@Mock
	private UserServiceImpl userService;
	
	
//	@Autowired
//	private MockMvc mockMvc;
	
	
	
//	@Before
//	public void setUp()
//	{
//	MockitoAnnotations.initMocks(this);
//	mockMvc = MockMvcBuilders.standaloneSetup(userController).build();
//	}
////	
	
	
	@Test
	public void TestAddUser() throws Exception
	{
		User user = new User();
		user.setUserId(1);
		user.setUserName("sai");
		user.setPassword("adsf12");
		user.setBookings(null);
		when(userService.addUser(user)).thenReturn(user);
		assertEquals(user, user);
	}
	
	@Test
	public void TestGetAllUser() {
		List<User> users=userService.getUsers();
		User user = new User();
		user.setUserId(1);
		user.setUserName("sai");
		user.setPassword("adsf12");
		user.setBookings(null);
		users.add(user);
		User user1 = new User();
		user1.setUserId(1);
		user1.setUserName("sai");
		user1.setPassword("adsf12");
		user1.setBookings(null);
		users.add(user1);
		User user2 = new User();
		user2.setUserId(1);
		user2.setUserName("sai");
		user2.setPassword("adsf12");
		user2.setBookings(null);
		users.add(user2);
		when(userService.getUsers()).thenReturn(users);
		assertEquals(users, users);
	}

}
