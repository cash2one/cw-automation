# -*- encoding: utf8 -*-

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
import MySQLdb

import ConfigParser
config=ConfigParser.ConfigParser()
# with open('./test-config/testcfg.cfg','r') as cfgfile:
#    config.readfp(cfgfile)
#    name=config.get('info','nam')
#    age=config.get('info','age')
#    print name
#    print age
with open('../test-config/systemcfg.properties', 'r') as cfg:
       config.readfp(cfg)
       # print config.get('config', 'username')
       print config.get('config', 'jw-host')
       print config.get('config', 'jw-port')
       print config.get('config', 'jw-user')
       print config.get('config', 'jw-passwd')
       print config.get('config', 'jw-db')

       jwhost=config.get('config', 'jw-host')
       jwport=config.get('config', 'jw-port')
       jwuser= config.get('config', 'jw-user')
       jwpasswd= config.get('config', 'jw-passwd')
       jwdb= config.get('config', 'jw-db')
   # config.set('info','gender','male')
# config.set('info','age','21')
# age=config.get('info,'age')
# print name
# print age


db = {
    'host': jwhost,
    'port': 3306,
    'user': jwuser,
    'passwd': jwpasswd,
    'db': jwdb,
    #'charset': 'utf8',
}
conn = MySQLdb.connect(**db)
cur = conn.cursor()


def insert():
    """
       插入2条记录
    """
    insert_sql = "insert into hao (name) VALUES ( %s)"
    name_list = ["小明", "小张"]
    for item in name_list:
        cur.execute(insert_sql, (item, ))
    conn.commit()

def select():
    """
       查询记录
    """
    select_sql = "select * from BS_SYS_DAY"
    cur.execute(select_sql)
    result = cur.fetchall()

    print result

def select1():
    """
       查询记录
    """
    select_sql = "select * from BS_SYS_USER"
    cur.execute(select_sql)
    result = cur.fetchall()

    print result


def delete():
    """
       删除name是小明的记录
    """
    delete_sql = "delete from hao WHERE name=%s"
    cur.execute(delete_sql, ("小明",))
    conn.commit()


def update():
    """
       把小张更新成小张张
    """
    update_sql = "update hao set name = %s where name = %s"
    cur.execute(update_sql, ("小张张", "小张"))
    conn.commit()

#testcase
def selectIFD_EXPINPUT():
    """
       查询记录
    """
    select_sql = "select * from IFD_EXPINPUT"
    cur.execute(select_sql)
    result = cur.fetchall()

    print result

def selectIFD_EXPOUTPUT():
    """
       查询记录
    """
    select_sql = "select * from IFD_EXPOUTPUT"
    cur.execute(select_sql)
    result = cur.fetchall()

    print result

def selectIFD_EXPASSERT():
    """
       查询记录
    """
    select_sql = "select * from IFD_EXPASSERT"
    cur.execute(select_sql)
    result = cur.fetchall()

    print result

#interface
def selectIFD_INTERFACEDEF():
    """
       查询记录
    """
    select_sql = "select * from IFD_INTERFACEDEF"
    cur.execute(select_sql)
    result = cur.fetchall()

    print result

def selectIFD_INFPARAM():
    """
       查询记录
    """
    select_sql = "select * from IFD_INFPARAM"
    cur.execute(select_sql)
    result = cur.fetchall()

    print result

def selectIFD_EXAMPLEDEF():
    """
       查询记录
    """
    select_sql = "select * from IFD_EXAMPLEDEF"
    cur.execute(select_sql)
    result = cur.fetchall()

    print result

#DTO table
def selectIFD_DTODEF():
    """
       查询记录
    """
    select_sql = "select * from IFD_DTODEF"
    cur.execute(select_sql)
    result = cur.fetchall()

    print result
def selectIND_DTOFIELD():
    """
       查询记录
    """
    select_sql = "select * from IND_DTOFIELD"
    cur.execute(select_sql)
    result = cur.fetchall()

    print result



def main():
    # insert()
    select()
    select1()
    # update()
    # delete()
    selectIFD_EXPINPUT()
    selectIFD_EXPOUTPUT()
    selectIFD_EXPASSERT()

    selectIFD_INTERFACEDEF()
    selectIFD_EXAMPLEDEF()
    selectIFD_INFPARAM()

    selectIFD_DTODEF()
    selectIND_DTOFIELD()


if __name__ == "__main__":
    main()
