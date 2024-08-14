
import mysql.connector as mc
import config

def main():
    try: 
        # connection info
        usr = config.mysql['user']
        pwd = config.mysql['pass']
        hst = config.mysql['host']
        dab = 'bowersDB'
        # create a connection
        con = mc.connect(user=usr,password=pwd, host=hst, database=dab)
        # create a result set
        rs = con.cursor()
        query = 'SELECT id, name FROM pet ORDER BY name'
        # execute the query
        rs.execute(query)
        # print the results
        for (pid, name) in rs:
            print('{}, {}'.format(pid, name))
        
    except mc.Error as err:
        print(err)

    finally:
        rs.close()
        con.close()

if __name__ == '__main__':
    main()
    
