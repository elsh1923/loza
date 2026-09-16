const http = require('http');
const fs = require('fs');
const path = require('path');

const server = http.createServer((req, res) => {
    let filePath = path.join(__dirname, req.url === '/' ? 'index.html' : req.url);
    fs.readFile(filePath, (err, content) => {
        if (err) {
            res.writeHead(404);
            res.end('Not found');
        } else {
            res.writeHead(200, { 'Content-Type': filePath.endsWith('.html') ? 'text/html; charset=utf-8' : 'text/plain' });
            res.end(content);
        }
    });
});

server.listen(3000, () => {
    console.log('Server running on http://localhost:3000');
});
