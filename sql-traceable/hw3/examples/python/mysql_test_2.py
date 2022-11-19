
import mysql.connector
import config

def main():
    try: 
        # connection info
        usr = config.mysql['user']
        pwd = config.mysql['pass']
        hst = config.mysql['host']
        dab = 'bowersDB'
        # create a connection
        con = mysql.connector.connect(user=usr,password=pwd, host=hst,
                                      database=dab)
        # get a category from the user
        user_input_1 = input('Please enter a pet type (dog, cat, etc): ')
        user_input_2 = input('Please enter an appearance keyword: ') 

        # create and execute query
        rs = con.cursor()
        query = "SELECT id, name, appearance " + \
                "FROM pet " + \
                "WHERE type = %s AND INSTR(appearance, %s)"
        rs.execute(query, (user_input_1, user_input_2))

        # print the result
        for row in rs:
            print('{}, {}, {}'.format(row[0], row[1], row[2]))

    except mysql.connector.Error as err:
        print(err)
        
    finally: 
        rs.close()
        con.close()
            
if __name__ == '__main__':
    main()
    
