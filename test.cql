MERGE (:Segment {name: ‚Test‘});
MERGE (:Segment {name: ‚Mail‘});
MERGE (:Segment {name: ‚Box‘});
MERGE (:Segment {name: ‚Internet‘});
MATCH (a:Segment {name: ‚Test‘}), (b:Segment {name: ‚Test‘}) MERGE (a)-[:Permit]->(b);
MATCH (a:Segment {name: ‚Test‘}), (b:Segment {name: ‚Internet‘}) MERGE (a)-[:Permit]->(b);
MATCH (a:Segment {name: ‚Mail‘}), (b:Segment {name: ‚Mail‘}) MERGE (a)-[:Permit]->(b);
MATCH (a:Segment {name: ‚Box‘}), (b:Segment {name: ‚Box‘}) MERGE (a)-[:Permit]->(b);
MATCH (a:Segment {name: ‚Internet‘}), (b:Segment {name: ‚Test‘}) MERGE (a)-[:Permit]->(b);
MATCH (a:Segment {name: ‚Internet‘}), (b:Segment {name: ‚Internet‘}) MERGE (a)-[:Permit]->(b)