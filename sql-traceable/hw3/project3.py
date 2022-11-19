'''
Colleen Lemak
Professor Bowers
CPSC 321 Fall
10 October 2022
Project 3
'''
import mysql.connector as mc
import config

def main_menu():
    # main menu prompt
    print("\n MAIN MENU\n 1. List countries\n", "2. Add country\n", "3. Find countries based on gdp and inflation\n", 
        "4. Update country's gdp and inflation\n", "5. Exit\n", "Enter your choice (1-5):")
    choice = int(input(" "))
    print()
    return choice

def main():
    try: 
        # load connection info
        usr = config.mysql['user']
        pwd = config.mysql['pass']
        hst = config.mysql['host']
        dab = 'clemak_DB'
        
        # create a connection
        cn = mc.connect(user=usr,password=pwd, host=hst, database=dab)
        
        # create a result set
        rs = cn.cursor()
        
        # call main menu prompt
        choice = main_menu()
        
        # loop until user exits
        while (choice < 5):
        
            if choice == 1:
                # display the names, codes, gdp, and inflation of all of the countries
                query = "SELECT * FROM Country"
                rs = cn.cursor()
                
                # execute the query
                rs.execute(query)
        
                # print the result
                for code, name, gdp, inflation in rs:
                    output = str(name) + ' (' + str(code) + ')' + ", per capita gdp $" + str(gdp) + ", inflation rate " + str(inflation) + '%.'
                    print(output)
                    
            elif choice == 2:
                # get new country info from user
                country_code = input("Country code................:\n")
                country_name = input("Country name................:\n")
                gdp = input("Country per capita gdp (USD):\n")
                inflation = input("Country inflation (pct).....:\n")
                
                # find any duplicates of user's country
                query = 'SELECT country_code FROM Country WHERE country_code = %s'
                rs = cn.cursor()
                rs.execute(query, (country_code,))
                
                # check uniqueness of country code
                if rs.fetchone() != None:
                    print("Country already exists in table.")
                else:
                    print("\nEntry is valid.\n")
                    rs.reset()
                    rs = cn.cursor()
                    
                    # insert user values
                    query = "INSERT INTO Country VALUES (%s,%s,%s,%s)"
                    rs.execute(query, (country_code, country_name, gdp, inflation))
                    print("Sucessfully executed query.\n")
                    cn.commit()
                    
            elif choice == 3:
                # get countries within a gdp and inflation range
                min_gdp = float(input("Minimum per capita gdp (USD)..:\n"))
                max_gdp = float(input("Maximum per capita gdp (USD)..:\n"))
                min_inflation = float(input("Minimum inflation (pct).......:\n"))
                max_inflation = float(input("Maximum inflation (pct).......:\n"))
                
                query = 'SELECT DISTINCT country_name FROM Country WHERE gdp >= %s AND gdp <= %s AND inflation >= %s AND inflation <= %s ORDER BY gdp DESC, inflation DESC'
                rs = cn.cursor()
                rs.execute(query, (min_gdp, max_gdp, min_inflation, max_inflation))
                print("Sucessfully executed query.\n")
                
                for country_name,  in rs:
                    print("Country name: ", country_name)
                
            elif choice == 4:
                # update gdp and inflation from country code
                country_code = input("Country code................:\n")
                gdp = input("Country per capita gdp (USD):\n")
                inflation = input("Country inflation (pct).....:\n")
                
                # find any matches of user's country
                query = "SELECT country_code FROM Country WHERE country_code = %s"
                rs = cn.cursor()
                rs.execute(query, (country_code,))
                
                # update info if country code exists
                if rs.fetchone() != None:
                    rs.reset()
                    rs = cn.cursor()
                    print("Country code exists in table.\nExecuting query...\n")
                    query = "UPDATE Country SET gdp = %s, inflation = %s WHERE country_code = %s"
                    rs.execute(query, (gdp, inflation, country_code))
                    cn.commit()
                    print("Database updated.")
                else:
                    print("Country does not exist in table.")
                    
            elif choice == 5:
                # exit program
                exit(0)
                
            choice = main_menu()
        
    except mc.Error as err:
        print(err)

    finally:
        rs.close()
        cn.close()


if __name__ == '__main__':
    main()
    
    
    
    
    
    
    
    
        