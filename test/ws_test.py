import run
import unittest

class FlaskrTestCase(unittest.TestCase):

    def setUp(self):
        flaskr.app.testing = True
        self.app = flaskr.app.test_client()

    def test_status(self):
        status = self.app.get('/status')
        assert status.data['status'] == 'OK'
        
if __name__ == '__main__':
    unittest.main()
