use mobile;
select * from `mobile analysis`;
 -- check mobile features and price list
 select phone_name,price from `mobile analysis`;
 
 -- find out 5 most expensive phn
  select * from `mobile analysis` order by price asc limit 5;
  
  select * from `mobile analysis` where brands="samsung"
  order by price desc
  limit 5;
  
  
  -- must have android phones then top 5 high price phone
  select * from `mobile analysis` where operating_system_type="android"
  order by price desc
  limit 5;
  
  -- must have android phones then last 5 high price phone
  select * from `mobile analysis` where operating_system_type="android"
  order by price asc
  limit 5;
  
  
 
  -- must have ios phones then top 5 high price phone
  select * from `mobile analysis` where operating_system_type="ios"
  order by price desc
  limit 5;
  
  -- must have android phones then last 5 high price phone
  select * from `mobile analysis` where operating_system_type="android"
  order by price desc
  limit 5;
  
   -- total price of the mobile find with the brand name
  select brands,sum(price) from `mobile analysis`
  group by brands;