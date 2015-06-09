'use strict'

var Q = require('q');
var mysql = require('mysql');
var config  = require('./config.json');
var pool  = mysql.createPool({
    connectionLimit : 10,
    host            : config.host,
    database        : config.database,
    user            : config.user,
    password        : config.password
});

function getRecords() {
    return Q.promise(function(resolve, reject) {
        var sql = "SELECT * FROM webpage_hit WHERE location LIKE ?";
        var params  = ['ARIN'];
        sql = mysql.format(sql, params);

        pool.getConnection(function(err, connection) {
            if (err) {
                return reject(err);
            }

            connection.query(sql, function(err, rows) {
                if (err) {
                    return reject(err);
                }

                rows.forEach(function(row) {
                    console.log(row);
                });

                //Return the connection to the pool
                connection.release();

                resolve();
            });
        });
    });
}

getRecords().then(function() {
    console.log('Success');
},function(err) {
   console.log(err);
});