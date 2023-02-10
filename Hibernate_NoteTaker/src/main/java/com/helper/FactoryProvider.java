package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
public class FactoryProvider 
{	//jab bhi hame data save krna hoga toh factory ka object banana hoga means connection
	//to create karna hi hoga, so ek connection provider banayenge and har jagah call 
	//kar lenge. so we made FactoryProvider.class
	public static SessionFactory factory;
	// static used bcoz method should get called on class name.
	public static SessionFactory getFactory()
	{	 
		if(factory==null)	//means agar factory me kuch nahi hai
		{
			// tabhi factory ko create karo
			factory=new Configuration().configure().buildSessionFactory();
		}
		return factory;
	}
	
	public  void openFactory()
	{		
		if(factory.isOpen())	// and agar factory me kuch hai
		{ 
			factory.close();	//so close it
		}		
	}
}
