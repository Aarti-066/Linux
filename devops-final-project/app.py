from http.server import HTTPServer, BaseHTTPRequestHandler

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        html = """
        <html>
        <head><title>DevOps App</title></head>
        <body style="background:#1a1a2e;color:white;text-align:center;font-family:Arial">
        <h1 style="color:#00d4ff">DevOps Final Project</h1>
        <h2 style="color:#00ff88">Built by Aarti Parihar</h2>
        <p>Running in Docker Container</p>
        <p>Deployed with CI/CD Pipeline</p>
        <p>Infrastructure created with Terraform</p>
        </body>
        </html>
        """
        self.wfile.write(html.encode())

server = HTTPServer(('0.0.0.0', 8000), Handler)
print("Server running on port 8000")
server.serve_forever()
