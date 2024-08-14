
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
        row = rs.fetchone()
        if row == None: 
            print('This pet id is invalid')
            rs.close()
            cn.close()
            return
        else:
            print('\nUpdating:', row[1] + ',', row[6])
        rs.reset()

        name = input("\nPlease enter the pet's new name: ")
        appearance = input("Please enter the pet's new appearance: ")

        q = "UPDATE pet SET name = %s, appearance = %s WHERE id = %s"
        rs = cn.cursor()
        rs.execute(q, (name, appearance, pet_id))
        cn.commit()

        print('Pet id', pet_id, 'has been updated in the database')
        
    except mysql.connector.Error as err:
        print(err)
        
    finally: 
        rs.close()
        cn.close()
            
if __name__ == '__main__':
    main()
    
