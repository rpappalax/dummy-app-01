import pytest
import time

def test_firefox(selenium):
    selenium.get('https://www.mozilla.org')
    time.sleep(360)


