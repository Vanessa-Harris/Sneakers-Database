# Sneakers-Database
Introduction:

Our group created a database that is centralized around sneakers and the various different styles,
types, sizes, and costs associated with them. The database will help those interested in sneakers
find various information regarding the shoe as it relates to that criteria, as well as provide a
one-stop location for sneaker finatics to learn more about Yeezy and Nike sneakers. Due to the
popularity of the shoe industry today, the idea for the database had a lot of potential to be
practical and helpful and as a team, we were able to bring the idea to life. It is our hope that
individuals can use our database as a tool to find and locate a specific type of sneaker based on
whatever filter they choose to use.
The database contains a wide collection of shoe data that came from the popular shoe exchange
website StockX. The dataset we designed includes details regarding a shoe's price, style,
availability, and brand. All of the information is centered around the idea of getting as many
description variables as possible for the shoes without making it too hard for the user to find
what they are looking for. We originally had the database tables set up in a way that made table
linking difficult to do and our revised version aims to solve that issue with a more detailed and
efficient result set that supports multiple table relationships. With all of the information in our
database, we want our select statements to pinpoint statistics regarding shoes like average cost,
size, and so on. Essentially, it is a better search engine for sneakers.

Database Description:

Our database is focused on the sorting of sneakers by their shoe style, price, size, availability,
brand, and inventory. This way it makes the ease of locating one's specific shoe need easy with
various filter options to help them locate whatever they may be looking for.
One of the most essential things for our project was to make sure our diagram was fluid and easy
enough to follow without messing up the relationships we made in the diagram. After debating
how many tables we wanted to make and what each would entail we decided to stick to our
original idea and keep eight tables. With eight tables it gives us the best opportunity to make a
solid final project while also providing enough information and detail to make the range they
cover substantial.
Our team also ended up deciding to make the inventory the center of the diagram with the most
connections as it contains the largest chunk of information. We include three foreign keys in the
inventory table because we wanted to make the categories easy to locate across the other various
tables. Along with the foreign keys, our team also included one primary key at the top that serves
as the main focal point when locating inventoryid. In the end, shoe_name along with
release_date serve as just regular variables to finish out the rest of the table. All primary and
foreign keys in the table are INT respectively. Every other table includes one exclusive primary
key and another variable entity except for the other two inventory tables named Shoe Style,
Inventory and Shoe Size inventory. Logically, having the variable tables like Price, Availability,
and Brand lead into the Inventory made the most sense because the information within the
variable table is literally what is needed to describe the inventory. Furthermore, themany-to-many 
tables like Shoe_Size_Inventory and Shoe_Style_Inventory act as subsections of
the Inventory where the user can find a smaller selection of Inventory information. In designing
it this way, we were able to create a database that was more robust and had connections beyond
one-to-many.

Physical Design:
The basic need our database is trying to fulfill is the ability to locate the specific shoes and/or
characteristics about that shoe. Our data was obtained from StockX so we used that as one of the
first project constraints that our group came across. We took the overall results from the database
and cut the list down to each specific shoe for men and women. We also ended up choosing
brands and shoe styles that were the best fitting for our database and the most ideal way to get to
our overall end-result. Afterwards, we thought as a team about what the user would want to find
when using our database. This was our reasoning for making the various tables such as
shoe_style_inventory, shoe_size_inventory, which were many-to-many tables using information
from the Inventory table and a variable table, and the variable one-to-many tables like size.This
is the reasoning behind each table seen in the ERD and the connections that bring everything
together. Originally, we had wanted to combine every single shoe on the website that had sold
but after working out some errors towards the end we decided the list had to be cut down in order
to avoid an unfathomable amount of data that we would have to sort in excel by hand. The final
physical design of our database, after much trial and error, ended up providing a lot of
information while also remaining relatively easy to understand. We feared that an overly
complex database would create unnecessary clutter with variables that sneaker lovers may not
actually care about.

Sample Data:

The data in our database was taken from the original StockX website. In the end we decided to
take every individual shoe type for all men and women shoes that were provided via the original
dataset and sorted them accordingly with the other different types of categories.
Like mentioned before upon originally retrieving the data we decided to go through and trim the
information by hand in order to get a fluid end result that makes finding things easier. We split 
the tables up in a way that is tailored to people who would most likely be using the database,
such as a sneakerhead or someone that is shopping for something specific. By doing so we
divided data up based on the 8 different table filters we have in the ERD, as well as ensuring that
we included every style and size that was provided via the original StockX database. In addition
to using the StockX website for data, we also consulted our personal knowledge on sneakers to
fulfill other data where StockX was lacking. For example, to create the Size table, we used prior
knowledge regarding common shoe sizes for women and men in order to guide how we assigned
a size category to each respective shoe. More specifically, we know that commonly, Men wear
above a size 8 and women often wear sizes below that (the size scale is in mens). Therefore, we
were able to use the size data that we had in order to determine the probable gender group for each shoe.

Reference List:
Einhorn, J. (2019, March 7). Attention Data Nerds: The StockX Data Contest Is. . . StockX
News. https://stockx.com/news/the-2019-data-contest/
