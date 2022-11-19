
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
        cn = mysql.connector.connect(user=usr,password=pwd, host=hst,
                                     database=dab)

        # get a pet id, make sure it is valid
        pet_id = int(input('Please enter a pet id: '))
        q = "SELECT * FROM pet WHERE id = %s"
        rs = cn.cursor()
        rs.execute(q, (pet_id,))
        if rs.fetchone() == None: 
            print('This pet id is invalid')
            rs.close()
            cn.close()
            return

        rs.reset()
        
        q = "DELETE FROM pet WHERE id = %s"
        rs = cn.cursor()
        rs.execute(q, (pet_id,))
        cn.commit()

        print('Pet id', pet_id, 'has been removed from the database')
        
    except mysql.connector.Error as err:
        print(err)
        
    finally: 
        rs.close()
        cn.close()
            
if __name__ == '__main__':
    main()
    
