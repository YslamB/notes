## NEO4J
# Heap size (for Java operations)
server.memory.heap.initial_size=3g
server.memory.heap.max_size=4g
# Page cache: ~50–70% of available RAM is ideal for better performance if the database is large.
server.memory.pagecache.size=10g
# transaction size (for big query at once)
dbms.memory.transaction.total.max=6g


## QUERIES
// Create User nodes with IDs from 1 to 1,000,000
UNWIND range(1, 1000000) as id
CREATE (u:User {id: id})

// create 1 million posts nodes with random user ids
UNWIND range(1, 1000000) as id
with toInteger(rand() * 1000000) + 1 AS uid, id
CREATE (p:Post {id: id, userId: uid})

//  create index
CREATE INDEX user_id_index FOR (u:User) ON (u.id);
CREATE INDEX post_id_index FOR (p:Post) ON (p.id);

// Create random likes for users with IDs 1-3
UNWIND range(1, 3) as userId
MATCH (u:User {id: userId})
MATCH (p:Post {id: toInteger(rand() * 1000000) + 1})
return u, p
// CREATE (u)-[:LIKES]->(p)

// get similary users
MATCH (u:User {id: 1})-[:LIKED]->(posts:Post)<-[:LIKED]-(users:User)
RETURN  users


// delete all nodes
MATCH (n)
DETACH DELETE n

// delete all relations
match ()-[l]->() delete l

// //////////////////////////////////////////////////////////////
UNWIND range(1, 100000) as i
with toInteger(rand() * 10) + 1 AS pid, toInteger(rand() * 10) + 1 AS uid
MATCH (p:Post {id: pid})
MATCH (u:User {id: uid})
MERGE (u)-[:LIKED]->(p)

// 

UNWIND range(1, 1000000) as uid
with toInteger(rand() * 10000000) + 1 AS pid, uid
MATCH (p:Post {id: pid}) where p.userId <> uid
MATCH (u:User {id: uid}) 
MERGE (u)-[:LIKED]->(p)

