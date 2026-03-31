
import unittest
from app import app

class AppTestCase(unittest.TestCase):
    def setUp(self):
        self.app = app.test_client()

    def test_hello(self):
        response = self.app.get('/')
        self.assertEqual(response.data.decode(), "Hello DevOps")

if __name__ == "__main__":
    unittest.main()
