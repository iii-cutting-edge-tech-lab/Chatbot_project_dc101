#!/usr/bin/env python
# coding: utf-8

# In[1]:


# unittest單元測試
# 導入unittest套件
import unittest
from linebot.utils import to_camel_case, to_snake_case, safe_compare_digest
# 導入要測試的程式
from app import * #(SQL_select,SQL_select_all,chk_user,chk_student_ID,chk_class,chk_cName)

# 建立一個類別，
class calTest(unittest.TestCase):
    def setUp(self):
        self.app = app.test_client() 
        self.app.testing = True 
        #self.自定義名稱 = 函數名稱()
        
    def tearDown(self):
        #self.自定義名稱 = None
        self.answer = None

    def test_get_status_code(self): 
        result = self.app.get('/info') 
        self.assertEqual(result.status, '200 OK')
        
    def test_to_snake_case(self):
        self.assertEqual(to_snake_case('hogeBar'), 'hoge_bar')

    def test_to_camel_case(self):
        self.assertEqual(to_camel_case('hoge_bar'), 'hogeBar')

    def test_safe_compare_digest_true(self):
        self.assertTrue(safe_compare_digest('/gg9a+LvFevTH1sd7', '/gg9a+LvFevTH1sd7'))

    def test_safe_compare_digest_false_same_size(self):
        self.assertFalse(safe_compare_digest('/gg9a+LvFevTH1sd7', '/gg9a+LvFevTH1sd8'))

    def test_safe_compare_digest_false_different_size(self):
        self.assertFalse(safe_compare_digest('/gg9a+LvFevTH1sd7', '/gg9a+LvFevTH1sd78'))
    
    def test_SQL_select(self):
        SQL="select cName from basic_info where Student_ID='I1900007'";
        self.answer = SQL_select(SQL)
        self.assertEqual(self.answer[0],'林品繻')

    def test_SQL_select_all(self):
        SQL="select ID from basic_info where class='DC101'";
        self.answer = SQL_select_all(SQL)
        self.assertEqual(len(self.answer),21)
        
    def test_chk_user(self):
        UID="U48064543b95204313d1a7f39ec0a08b8";
        self.answer = chk_user(UID)
        self.assertEqual(self.answer[1],'林品繻')
        
            
if __name__ == "__main__":
    #unittest.main()
    unittest.main(argv=['ignored', '-v'], exit=False)

