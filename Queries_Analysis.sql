-- -----------------------------
-- Sales and Business Anlytics:
-- -----------------------------

-- 1. Which Genre had the most sales in this month?
SELECT g.name AS Most_saled_genres
FROM Genres g 
JOIN Sales s USING (genre_id)
GROUP BY g.name 
HAVING COUNT(s.genre_id)=(
	SELECT MAX(Sales_cnt) 
	FROM (
		SELECT COUNT(s.genre_id) AS Sales_cnt 
		FROM Sales s 
		GROUP BY genre_id
	) subquery
);

-- 2. Which artist generated the most revenue?
SELECT a.name AS most_revenue_artist
FROM Artists a
JOIN Sales s USING (genre_id)
WHERE s.sale_id=(
		SELECT sale_id 
        FROM (
        SELECT s.sale_id, SUM(p.amount) as tot_revenue
		FROM Sales s
		JOIN Payments p USING (sale_id)
		GROUP BY s.sale_id
		ORDER BY tot_revenue DESC
		LIMIT 1
    ) subquery
);

-- 3. What were the top 3 best-selling albums?
SELECT alb.title AS top3_bestselling_albums
FROM Albums alb
JOIN Tracks t USING (album_id)
WHERE t.album_id IN (
	SELECT album_id 
    FROM ( 
		SELECT t.album_id,t.track_id,COUNT(s.sale_id) AS top_selling
		FROM Tracks t
		JOIN Sales s USING (track_id)
		GROUP BY track_id
		ORDER BY top_selling DESC
		LIMIT 3
	) subquery
)
GROUP BY alb.title;

-- 4.Who are the top 5 customers by spending?
SELECT  DISTINCT c.name AS top5_paid_customers
FROM Customers c
JOIN Sales s USING (customer_id)
WHERE c.customer_id IN (
	SELECT customer_id 
	FROM (
		SELECT s.customer_id, SUM(p.amount) AS tot_amount
        FROM Sales s
        JOIN Payments p USING (sale_id)
        GROUP BY s.customer_id
        ORDER BY tot_amount DESC
        LIMIT 5
    ) subquery
);

-- 5.What are the total and average revenue per sale?
SELECT SUM(amount) AS Total_revenue, AVG(amount) AS avg_revenue
FROM Payments;

-- 6.Which day of the month had the highest number of sales?
SELECT sold_date AS highest_sales_day, COUNT(sale_id) AS tot_sales
FROM Sales
GROUP BY sold_date
ORDER BY tot_sales DESC
LIMIT 1;

-- 7.How many sales are made in total ?
SELECT COUNT(sale_id) AS Total_sales,(SELECT COUNT(*) FROM Payments) AS completed_sales
FROM Sales;