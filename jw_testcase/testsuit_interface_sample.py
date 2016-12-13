# -*- coding: utf-8 -*-
#encoding:utf-8
'''
Copyright 2016 JointWisdom Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
'''
import unittest, time, re
import HTMLTestRunner,sys
import generateutils
import os
import shutil
#sys.path.append('c:\\mypythonlib')
sys.path.append("../")
sys.path.append("../jw_utils")
sys.path.append("../jw_base")
from jw_utils import connection_db
from jw_utils.logUtils import *
from jw_utils import pythonEmail

#http://www.yiibai.com/html/postgresql/2013/080998.html
if __name__ == '__main__':
    suite = unittest.TestSuite()
    #suite.addTest(get_order_list('test_get_order_list'))
    #suite.addTest(testcase_api_account_login('test_testcase_api_account_login'))
    #suite.addTest(testcase_api_account_login('test_testcase_api_account_changeuser'))
    #suite.addTest(testcase_api_account_login('test_testcase_api_account_changepassword'))
    #suite.addTest(testcase_api_account_login('test_testcase_api_account_changeacl'))
    #outfile=open("c://edaixi_testdata//report.html",'wb')
    #filename = 'G:\\seleniums\\result.html'
    # connection_db.select();

    filename = time.strftime('%Y-%m-%d',time.localtime(time.time()))
    logging.basicConfig(level=logging.DEBUG,
                    format='%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                    datefmt='%a, %d %b %Y %H:%M:%S',
                    filename='../test-log/'+filename+'.log',
                    filemode='w')

    #定义一个StreamHandler，将INFO级别或更高的日志信息打印到标准错误，并将其添加到当前的日志处理对象#
    console = logging.StreamHandler()
    console.setLevel(logging.INFO)
    formatter = logging.Formatter('%(name)-12s: %(levelname)-8s %(message)s')
    console.setFormatter(formatter)
    logging.getLogger('').addHandler(console)

    logging.debug('This is debug message')
    logging.info('This is info message')
    logging.warning('This is warning message')

    connection_db.selectIFD_INTERFACEDEF();
    generateutils.httpGetImplement("assertgetdemo1111");
    generateutils.httpPostSendImplement("assertgetdemo333");
    #generateutils.httpPostImplement("assertpostdemo111");
    # discover
    # discover = suite.defaultTestLoader.discover("D:\\PycharmProjects\\cloudwisdom_automation\\jw_testcase",
    #                                                pattern='*Implement.py',
    #                                                top_level_dir=None)
    # for suite in discover:
    #     for test_case in suite:
    #         suite.addTests(test_case)
    #         print suite
    #windows dir path
    import ConfigParser
    config=ConfigParser.ConfigParser()
    with open('../test-config/systemcfg.properties', 'r') as cfg:
        config.readfp(cfg)
        # print config.get('config', 'username')
        print config.get('config', 'testsuit_dir')
        testsuit_dir=config.get('config', 'testsuit_dir')
        print config.get('config', 'testsuit_report_dir')
        testsuit_report_dir=config.get('config', 'testsuit_report_dir')

    test_dir=os.path.join(os.path.dirname(os.getcwd()),"jw_testcase")
    #test_report_dir=os.path.join(os.path.dirname(os.getcwd()),"test-report").replace('\\','//')
    test_report_dir=os.path.join(os.path.dirname(os.getcwd()),"test-report","jwinterface_test_report.html")
    print "===os.getcwd()===>",test_dir,"===　上一级目录　os.getcwd()===>",test_report_dir.replace('\\','//')
    print os.path.abspath(os.path.dirname(__file__))
    # test_dir="E:\\IDEidea\\IdeaProjects\\jw-automation\\jw_testcase"较为
    # test_report_dir="E:\\IDEidea\\IdeaProjects\\jw-automation\\test-report\\"

    #linux redhat7 dir path
    # test_dir="/var/lib/jenkins/workspace/test-Python/jw_testcase"
    # test_report_dir="/var/lib/jenkins/workspace/test-Python/test-report/"

    discover = unittest.defaultTestLoader.discover(test_dir, pattern='*Impl.py')
    currenttime=time.strftime("%Y-%m-%d-%H-%M-%S", time.localtime())
    print "the current date time is ",currenttime
    #fp = file("/usr/edaixi_report/"+currenttime+"caiwu_test_report.html", 'wb')
    nowtime = time.strftime('%Y-%m-%d_%H_%M_%S_')
    # fp = file(test_report_dir+"cwapi"+nowtime+"_test_report.html", 'wb')
    fp = file(test_report_dir, 'wb')
    #fp = file("c:\\edaixi_testdata\\20150717caiwu_test_report.html", 'wb')

    htmlRunner= HTMLTestRunner.HTMLTestRunner(stream=fp,title=u'CloudWisdomInterface测试报告',description=u"用例执行情况 by 201611 softwareluke")
    #suite =  unittest.TestLoader().loadTestsFromTestCase(MyTest)
    htmlRunner.run(discover)
    fp.close()
    pythonEmail.send_mail()
    print "the interface testing has been done, the email test report sent. "
