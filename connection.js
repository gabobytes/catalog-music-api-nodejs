var pg = require('pg');

var config = {
	user: 'postgres',
	database: 'catalogmusic',
	password: 'chanfle',
	port: 5432,
	max: 10,
	idleTimeoutMillis: 30000,
};

var pool = new pg.Pool(config);

exports.catalog  = {
	getCatalog: function(){
		pool.connect(function(err,client,done){
			if(err){
				return console.error('error fetching client from pool', err);
			}
			client.query('SELECT * FROM catalog', function(err,result){
				done();

				if(err){
					return console.error('error running query',err);
				}
				console.log(result.rows);
			});
		});

		pool.on('error',function(err,client){
			console.error('idle client error', err.message, err.stack);
		})
	}//end getCatalog
}//end  Catalog	