use library;
select * from book;
 select * from author;
 #Find the author who wrote the oldest published book.
select firstname, lastname from author where authorid in (select authorid from book where publicationyear = (select MIN(publicationyear) from book));
#Display the book title with the highest number of available copies.
select title from book where availablecopies = (select max(availablecopies) from book);
#List the names of authors who have written at least one book in the ‘fiction’ genre 
select firstname, lastname from author where authorid in (select authorid from book where genre = 'fiction');
select firstname, lastname from author where authorid in (select authorid from book);



