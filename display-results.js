module.exports = function (err, results) {
    if (err) {
        console.error(err);
        throw err;
    }

    console.log('Results:');

    results.forEach(function(result) {
        console.log('* ' + result.trim());
    });
};
