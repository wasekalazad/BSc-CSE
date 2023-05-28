## schema ##

CREATE DATABASE IF NOT EXISTS BearBurger_PHP;

USE BearBurger_PHP;

CREATE TABLE IF NOT EXISTS Users
(
    UserID      INT AUTO_INCREMENT PRIMARY KEY,
    Username    VARCHAR(30) NOT NULL UNIQUE,
    Email       VARCHAR(30) NOT NULL UNIQUE,
    Password    VARCHAR(30) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    Gender      VARCHAR(6)  NOT NULL,
    Spent       INT,
    RegDate     TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Foods
(
    FoodID      INT AUTO_INCREMENT PRIMARY KEY,
    Category    VARCHAR(30) NOT NULL,
    Title       VARCHAR(30) NOT NULL UNIQUE,
    Description TEXT        NOT NULL,
    Price       INT         NOT NULL
);

CREATE TABLE IF NOT EXISTS Comments
(
    CommentID INT AUTO_INCREMENT PRIMARY KEY,
    ParentID  INT         NOT NULL,
    FoodID    INT         NOT NULL,
    PostedBy  VARCHAR(30) NOT NULL,
    Comment   TEXT        NOT NULL,
    PostDate  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT FoodID_FK FOREIGN KEY (FoodID) REFERENCES foods (FoodID)
);


## data ##

INSERT IGNORE INTO Users (Username, Email, Password, PhoneNumber, Gender, Spent)
VALUES ('Fardin', 'hello@Fardin.net', 'Asdfgh', '+8801234567890', 'male', 6801),
       ('Bill Gates', 'billgates@outlook.com', 'billgates68457', '+6963343233', 'male', 9960),
       ('Elon Musk', 'elonmusk@yahoo.com', 'elon123', '+9668508170248', 'male', 7856),
       ('Jack Ma', 'jackma@gmail.com', 'jackma144', '+1667698473784', 'male', 4567),
       ('Steve Jobs', 'stevejobs@icloud.com', 'steve1213', '+1527475095845', 'male', 421),
       ('Jeff Bezos', 'jeffbezos@gmail.com', 'jeffbe1334', '+8966295324845', 'male', 2152),
       ('Mark Zuckerberg', 'markzuckerberg@live.com', 'markz131', '+2657146731697', 'male', 3972),
       ('Sundar Pichai', 'sundarpichai@gmail.com', 'sundarp296', '+9815680737969', 'male', 1546);

INSERT IGNORE INTO Foods (Category, Title, Description, Price)
VALUES ('Burger', 'Cheese Burger', 'Prepared with beef patty, cheese, burger sauce, pickles & onion', 650),
       ('Burger', 'Bacon Cheese Burger', 'Prepared with beef patty, 2 slices cheese, bacon & burger sauce', 500),
       ('Burger', 'Double Cheese Burger', 'Prepared with 2 beef patties, double cheese, burger sauce & onion', 640),
       ('Burger', 'Lil Smoke', 'Prepared with beef patty, cheese, bbq sauce, burger sauce, pickles & onion', 160),
       ('Burger', 'Beef Smoke', 'Prepared with 2 beef patties, 2 slices cheese, bbq sauce, burger sauce & onion', 280),
       ('Burger', 'Juicy Burger', 'Prepared with potato juice, beef patties, double cheese & burger sauce', 960),
       ('Pizza', 'BBQ Chicken Pizza', 'Topped with grilled chicken, bbq sauce & mozzarella cheese', 240),
       ('Pizza', 'Chicken Meatball Pizza', 'Topped with chicken meatball, tomato sauce & mozzarella cheese', 960),
       ('Pizza', 'Chicken Tikka Pizza', 'Topped with chicken tikka, tomato sauce & mozzarella cheese', 350),
       ('Pizza', 'Beef Meatball Pizza', 'Prepared with frank sausage, bacon, scallion, sauce & cheddar cheese', 560),
       ('Pizza', 'Vegetable Pizza', 'Topped with capsicum, mushroom, sweet corn, onion & black olive', 480),
       ('Pizza', 'Chicken Chunky Pizza', 'Topped with black olive, tomato, capsicum & green chili', 510),
       ('Salad', 'Cashewnut Salad', 'Topped with cashew nout and veggies', 310),
       ('Salad', 'Seafood Salad', 'Topped with seafood and lots of veggies and virgin olive oil', 360),
       ('Salad', 'Grilled Chicken Salad', 'Topped with chicken and secret spice ', 310),
       ('Salad', 'Russian Salad', 'Authentic russian taste with lots of veggies and secret sauce', 370),
       ('Salad', 'Korean Beef Salad', 'Made with beed in korean spice and sauce', 560),
       ('Pasta', 'Bitch Lasagna', 'Baked casserole made with wide flat pasta and layered with fillings such as ragú.', 996),
       ('Pasta', 'Ovenbaked Pasta', 'Topped with black olive, chicken, capsicum & green chili', 450),
       ('Pasta', 'BBQ Grill Chicken Pasta', 'Topped with grilled chicken, bbq sauce & mozzarella cheese', 340),
       ('Pasta', 'Seafood Pasta', 'Topped with seafood & mushroom', 350),
       ('Pasta', 'American Mac & Cheese', 'Topped with macarony & mozzarella cheese', 560),
       ('Drinks', 'Lemonade', 'Taste of fresh lemon and freshness', 110),
       ('Drinks', 'Iced lemon Tea', 'Lemon tea but with chilled ice', 200),
       ('Drinks', 'Lemon lassi', 'Taste of lassi with tanginess of lemon', 170),
       ('Drinks', 'Milk Shake', 'Taste of heavy cream and milk', 140),
       ('Drinks', 'Mango Smoothie', 'Tate of mangoes infused with cream and milk', 270),
       ('Coffee', 'Espresso', 'Shots of pure coffee', 120),
       ('Coffee', 'Cappuccino', 'Shots of pure coffee induced milk', 260),
       ('Coffee', 'Americano', 'SHots of pure Coffee in American style ', 310),
       ('Coffee', 'Latte', '30% coffee with heavy milk ', 370),
       ('Desert', 'Brownie', 'Mix of chocolate and magic', 130),
       ('Desert', 'Red Velvet', 'Magic of bakery in red color', 260),
       ('Desert', 'Choco Fudge', 'Chocolate cheese and creaminess ', 190),
       ('Desert', 'Oreo and Cheese', 'Crunchy oreo crust and creamy cheese feeling', 190),
       ('Desert', 'Blueberry Cheese Dip', 'Mix of blueberry cheesy feeling', 170),
       ('Sides', 'Medium French Fry', 'Delicious french fry in medium', 90),
       ('Sides', 'Large French Fry', 'Delicious french fry in large', 110),
       ('Sides', 'Chicken Fingers', 'Chicken fried in finger sized', 130),
       ('Sides', 'Naga Drumsticks', 'Soft spicy chicken with crunchy outer', 120);

INSERT IGNORE INTO Comments (CommentID, ParentID, FoodID, PostedBy, Comment, PostDate)
VALUES (1, 0, 1, 'Fardin', 'I have to say, I enjoyed every single bite of the meal.', '2023-05-12 22:27:04'),
       (2, 1, 1, 'Bill Gates',
        'It was a pleasant meal indeed. Did you tried their tempura?',
        '2023-05-12 22:28:28'),
       (3, 2, 1, 'Fardin', 'Yes, it was so soft! I will recommend my friends to this place',
        '2023-05-12 22:29:36'),
       (4, 2, 1, 'Bill Gates', 'Money well spent. I came here with my family and it was worth it', '2023-05-12 22:30:55'),
       (5, 0, 1, 'Elon Musk', 'My family loved it too!',
        '2023-05-12 22:31:48'),
       (6, 4, 1, 'Steve Jobs', 'Lorem ipsum dolor sit amet, consectetur.', '2023-05-12 22:32:46'),
       (7, 0, 1, 'Jeff Bezos',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias asperiores cumque dolore, harum iure necessitatibus perferendis quasi sequi suscipit tempore? Aperiam culpa delectus ducimus inventore nam possimus praesentium provident quaerat quas, quidem quisquam, recusandae sunt suscipit totam ullam vitae, voluptatibus.',
        '2023-05-12 22:35:34');