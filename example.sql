https://paiza.io/projects/2mL-kUCIJ8SoXTlHn7NCdQ?language=mysql
CREATE TABLE category (
     id MEDIUMINT NOT NULL AUTO_INCREMENT,
     name CHAR(30) NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE products (
     id MEDIUMINT NOT NULL AUTO_INCREMENT,
     name CHAR(30) NOT NULL,
     category_id MEDIUMINT NOT NULL,
     PRIMARY KEY (id)
);

INSERT INTO category (name) VALUES
    ('catA'), ('catB'), ('catC')
    ;
    
INSERT INTO products (name, category_id) VALUES
    ('prod1', 1), ('prod2', 2), ('prod3', 1), ('prod4', 1),
    ('prod1', 1), ('prod2', 3), ('prod3', 2), ('prod4', 2)
    ;
    
SELECT c.id, c.name , count( p.category_id ) AS product_count
FROM category c INNER JOIN  products p ON c.id = p.category_id
GROUP BY c.id, c.name;
