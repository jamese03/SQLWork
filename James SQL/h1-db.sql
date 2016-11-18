
-- test data for book db

CREATE TABLE book( isbn CHAR(13) UNIQUE NOT NULL, title CHAR(50), publisher CHAR(30), 
                   category CHAR(20),  price DECIMAL(5,2), units INTEGER 
                 );

INSERT INTO book VALUES( '0321369572',    'fundamentals of database systems', 'addison wesley',   'technical',  89.61, 300000 );
INSERT INTO book VALUES( '0321197844',    'introduction to database systems', 'addison wesley',   'technical',  95.62, 200000 );
INSERT INTO book VALUES( '0596518846',    'sql in a nutshell',                'oreilly',          'technical',  44.99, 100000 );
INSERT INTO book VALUES( '0131873253',    'database systems complete book',   'addison wesley',   'technical', 105.60, 100000 );
INSERT INTO book VALUES( '9781594489501', 'a thousand splendid suns',         'riverhead books',  'ficton',    25.95, 2000000 );
INSERT INTO book VALUES( '9780060826598', 'oracle bones',                     'harper',           'nonficton', 15.95, 1000000 );
INSERT INTO book VALUES( '0345448367',    'darwins children',                 'delray',           'scifi',      7.50,  500000 ); 
INSERT INTO book VALUES( '0812531655',    'psycholone',                       'doherty',          'scifi',      5.99,  100000 );
INSERT INTO book VALUES( '0671027360',    'angels and demons',                'pocket books',     'mystery',    7.99, 6000000 );
INSERT INTO book VALUES( '0671027387',    'deception point',                  'pocket books',     'mystery',    7.99, 5000000 );
INSERT INTO book VALUES( '0446600466',    'black market',                     'warner',           'mystery',    5.99, 3000000 );
INSERT INTO book VALUES( '9786311818893', 'the happiness prescription',       '',                 'self-help', 19.99, 1000000 ); 
INSERT INTO book VALUES( '0395755158',    'creating health',                  'houghton mifflin', 'self-help', 14.95, 2000000 );
INSERT INTO book VALUES( '078688598x',    'relationship rescue',              'hyperion',         'self-help', 21.12, 2000000 );
INSERT INTO book VALUES( '0786884592',    'life strategies',                  'hyperion',         'self-help',  1.99, 2000000 );

CREATE TABLE author( isbn CHAR (13), name CHAR(30), city CHAR(15), state CHAR(2) );

INSERT INTO author VALUES( '0321369572',    'elmasri',       'arlington',  'tx' );
INSERT INTO author VALUES( '0321369572',    'navathe',       'atlanta',    'ga' );
INSERT INTO author VALUES( '0321197844',    'date',          'palo alto',  'ca' );
INSERT INTO author VALUES( '0596518846',    'kkline',        'whereever',  'nh' );
INSERT INTO author VALUES( '0596518846',    'dkline',        'everywhere', 'nh' );
INSERT INTO author VALUES( '0596518846',    'hunt',          'nowhere',    'nh' );
INSERT INTO author VALUES( '0131873253',    'ullman',        'palo alto',  'ca' );
INSERT INTO author VALUES( '0131873253',    'garcia-molina', 'palo alto',  'ca' );
INSERT INTO author VALUES( '0131873253',    'widom',         'palo alto',  'ca' );
INSERT INTO author VALUES( '0345448367',    'bear',          'somewhere',  'wa' );
INSERT INTO author VALUES( '0812531655',    'bear',          'somewhere',  'wa' );
INSERT INTO author VALUES( '9781594489501', 'hosseini',      'anywhere',   'tx' );
INSERT INTO author VALUES( '9780060826598', 'hessler',       'there',      'ca' );
INSERT INTO author VALUES( '0671027360',    'brown',         'exeter',     'nh' );
INSERT INTO author VALUES( '0671027387',    'brown',         'exeter',     'nh' );
INSERT INTO author VALUES( '0446600466',    'patterson',     'washington', 'dc' );
INSERT INTO author VALUES( '0395755158',    'chopra',        'sedona',     'az' );
INSERT INTO author VALUES( '9786311818893', 'chopra',        'sedona',     'az' );
INSERT INTO author VALUES( '078688598x',    'drphil',        'ny',         'ny' );
INSERT INTO author VALUES( '0786884592',    'drphil',        'ny',         'ny' );

CREATE TABLE sales( isbn CHAR(13), gender CHAR(1), age SMALLINT, income DECIMAL(8,2), state CHAR(2) );

INSERT INTO sales VALUES( '0321369572',    'm', 45, 100000, 'nh' ); 
INSERT INTO sales VALUES( '0321369572',    'm', 25,  50000, 'nh' ); 
INSERT INTO sales VALUES( '0321369572',    'f', 41, 100000, 'nh' ); 
INSERT INTO sales VALUES( '0321369572',    'f', 36,  70000, 'nh' ); 
INSERT INTO sales VALUES( '0321369572',    'm', 22,  17000, 'nh' );
INSERT INTO sales VALUES( '9781594489501', 'f', 56, 100000, 'nh' ); 
INSERT INTO sales VALUES( '9781594489501', 'f', 88,  40000, 'tx' );
INSERT INTO sales VALUES( '9781594489501', 'm', 72,  35000, 'tx' );
INSERT INTO sales VALUES( '0671027360',    'm', 34,  50000, 'nh' );
INSERT INTO sales VALUES( '0671027360',    'f', 47, 100000, 'nh' );
INSERT INTO sales VALUES( '0671027360',    'm', 44,  60000, 'vt' );
INSERT INTO sales VALUES( '0671027360',    'f', 47,  70000, 'nh' );
INSERT INTO sales VALUES( '0671027387',    'm', 34,  50000, 'nh' ); 
INSERT INTO sales VALUES( '0671027387',    'm', 44,  60000, 'vt' );    
INSERT INTO sales VALUES( '0671027387',    'f', 47,  70000, 'nh' );     
INSERT INTO sales VALUES( '0671027387',    'f', 47, 100000, 'nh' );    

CREATE TABLE award( isbn CHAR(13), prize CHAR(10) ); 

INSERT INTO award VALUES( '0812531655',    'nebula'    );
INSERT INTO award VALUES( '0812531655',    'hugo'      );
INSERT INTO award VALUES( '078688598x',    'newage'    );
INSERT INTO award VALUES( '0446600466',    'edgar'     );
INSERT INTO award VALUES( '9780060826598', 'natl book' );
INSERT INTO award VALUES( '0321197844',    'pulitzer'  ); 
