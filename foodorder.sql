SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('Uday kiran','udrh@gmail.com',9074355656,'abc',''),
('Vishal Yalasangi','viya@gmail.com',9087654456,'xyz',''),
('Sujal','sujal@gmail.com',9087645343,'def',''),
('Sahil','sahil@gmailcom',8978999082,'lmn',''),
('Shreyas','shre@gmail.com',9876087551,'gkl','');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('teju','tejashree','teju1@gmail.com',9054367781,'banglore','teju111'),
('ramya','ramyakumar','ramya12@gmail.com',9087687778,'bangalore','ramya122'),
('Suraj','Suraj rao','suraj12@gmail.com',6798543210,'bangalore','suraj126'),
('Ashitha','Ashitha M','ashitha@gmail.com',7896889986,'bangalore','ashitha34'),
('Anvitha','Anvitha Murthy','anvimurthy@gmail.com',8907688999,'Bangalore','anvimurthy134');
-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Juicy Masala Paneer Kathi Roll', 40, 'Juicy Masala Paneer Kathi Roll loaded with Masala Paneer chunks, onion & Mayo.', 1, 'images/paneer roll.jpg', 'ENABLE'),
(59, 'Blue-Lagoon-Mocktail', 60, 'Try Mocktail - Blue-Lagoon-Mocktail is a non-alcoholic Drink recipie.it is made by using peels of laraha fruit', 2, 'images/blue lagoon.jpg', 'ENABLE'),
(60, 'Chocolate Hazelnut Truffle', 99, 'Lose all senses over this very delicious chocolate hazelnut truffle.', 3, 'images/chocolate.jpg', 'ENABLE'),
(61, 'Happy Happy Choco Chip Shake', 80, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/shake.jpg', 'ENABLE'),
(62, 'Spring Rolls', 65, 'Delicious Spring Rolls by Dragon Hut, Delhi. Order now!!!', 2, 'images/spring roll.jpg', 'ENABLE'),
(63, 'Baahubali Thali', 75, 'Baahubali Thali consists of 30 vegetarian and non vegetarian dishes', 3, 'images/bahubali thali.jpg', 'ENABLE'),
(65, 'Coffee', 25, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 1, 'images/coffee.jpg', 'ENABLE'),
(66, 'Tea', 30, 'The simple elixir of tea is of our natural world.', 3, 'images/tea.jpg', 'ENABLE'),
(69, 'Burger', 85, 'A veggie burger made from ingredients like beans, especially soybeans and tofu, nuts, grains, seeds or fungi such as mushrooms or mycoprotein', 6, 'images/burger.jpg', 'ENABLE'),
(68, 'Ice Cream', 25, 'Ice cream is a sweetened frozen food made from cocoa or vanilla,or with fruit such as strawbwrries and peaches typically eaten as asnack or dessert', 2, 'images/icecream1.jpg', 'ENABLE'),
(70, 'Donuts', 50, 'Donuts is made from leavened fried dough', 3, 'images/donuts.jpg', 'ENABLE'),
(71, 'Samosa', 40, ' Samosa is a fried South Asian pastry with a savory filling, including ingredients such as spiced potatoes, onions, and peas.', 2, 'images/samosa.jpg', 'ENABLE'),
(72, 'Paneer Pakora', 45, 'it gives whole new dimension even to the most boring or dull vegetable', 1, 'images/paneer pakora.jpg', 'ENABLE'),
(73, 'Puff', 35, 'Vegetable Puff, a snack with crisp-n-flaky outer layer and mixed vegetables stuffing', 6, 'images/puff.jpg', 'ENABLE'),
(74, 'Pizza', 200, 'Good and Tasty ', 3, 'images/pizza1.jpg', 'ENABLE'),
(75, 'French Fries', 60, 'Pure Veg and Tasty.', 6, 'images/french fries.jpg', 'ENABLE'),
(76, 'Sandwitch', 35, 'Vegetable sandwich is a type of vegetarian sandwich consisting of a vegetable filling between bread', 2, 'images/sandwitch.jpg', 'ENABLE'),
(77, 'Milkshakes', 60, 'Sweet beverage made by blending milk, ice cream, and flavorings or sweeteners such as butterscotch, caramel sauce, chocolate syrup, fruit syrup, or whole fruit into a thick, sweet, cold mixture..', 3, 'images/milkshake.jpg', 'ENABLE'),
(78, 'Potato smileys', 75,'a potato based snack or a variant of potato chips which is baked or deep fried with smiley shape.', 1, 'images/potato simley.jpg', 'ENABLE'),
(79, 'Belgian Waffles', 45, 'Belgian waffles have extra-deep pockets—the better for filling with butter, jam, maple syrup, or whipped cream', 2, 'images/Belgian Waffles.jpg', 'ENABLE');

-- --------------------------------------------------------
--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('udrh21','Uday Kiran','udrh@gmail.com',9087654456,'Bangalore','udrh12'),
('viya21','Vishal Yalasangi','viya@gmail.com',9074355656,'Banglore','viya123'),
('suja21','Sujal','sujal@gmail.com',9087645343,'Goa','suj123'),
('sahil21','Sahil','sahil@gmail.com',8978999082,'Bangalore','sahi12'),
('shreyas21','Shreyas','shre@gmail.com',9876087551,'Whitefield','shre18');
	

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--
INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2022-10-08', 'Ashitha', 1),
(2, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2022-10-21', 'Ramya', 1),
(3, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2022-11-25', 'teju', 1),
(4, 65, 'Tea', 30, 4, '2022-11-03', 'Anvitha', 4),
(5, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2022-12-14', 'Suraj', 1),
(6,59,'masaladosa',50,3,'2022-12-12','Vishal',1);
-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--
INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'King of spices', 'kingofspices@gmail.com', '7998562145', 'Karnataka', 'udrh21'),
(2, 'Golden cafe', 'goldencafe@gmail.com', '9887546821', 'Bangalore', 'viya21'),
(3, 'Rothi Mahal', 'rothimahal@gmail.com', '7778564231', 'Goa', 'suja21'),
(4, 'The South Delight', 'southdelight.com', '9498909908', 'Bangalore', 'sahil21'),
(6, 'Skylight Cafe', 'skylightcafe@gmail.com', '9443369040', 'Chickballapur', 'shreyas21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

CREATE TRIGGER update_order_timestamp
BEFORE INSERT ON orders
FOR EACH ROW
SET NEW.order_date = '';

CREATE VIEW OrderDetailsView AS
SELECT o.order_ID, o.order_date, c.fullname AS customer_name, f.name AS food_name, f.price AS food_price, o.quantity,
       r.name AS restaurant_name, r.email AS restaurant_email, r.contact AS restaurant_contact
FROM orders o
JOIN customer c ON o.username = c.username
JOIN food f ON o.F_ID = f.F_ID
JOIN restaurants r ON o.R_ID = r.R_ID;


