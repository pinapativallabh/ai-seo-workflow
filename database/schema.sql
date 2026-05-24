CREATE TABLE keywords (
    id SERIAL PRIMARY KEY,
    keyword TEXT NOT NULL,
    status TEXT DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE serp_data (
    id SERIAL PRIMARY KEY,
    keyword TEXT NOT NULL,
    titles TEXT,
    urls TEXT,
    status TEXT DEFAULT 'parsing_next',
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE clusters (
    id SERIAL PRIMARY KEY,
    cluster_name TEXT,
    primary_keyword TEXT,
    status TEXT DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE articles (
    id SERIAL PRIMARY KEY,
    cluster_id INTEGER REFERENCES clusters(id),
    title TEXT,
    content TEXT,
    status TEXT DEFAULT 'draft',
    created_at TIMESTAMP DEFAULT NOW()
);