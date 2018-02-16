import hitor
import json
import unittest
import pprint

class HitorTestCase(unittest.TestCase):

    def setUp(self):
        hitor.app.testing = True
        self.app = hitor.app.test_client()

    def test_status(self):
        status = self.app.get('/status')
        print("Respuesta ")
        pp = pprint.PrettyPrinter(indent=4)
        data = json.loads(status.data.decode('utf8'))
        assert data['status'] == 'OK'
        
if __name__ == '__main__':
    unittest.main()
