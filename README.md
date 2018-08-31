This script can be use to extract individual points from inside the database (sqlite) and convert these values to a CSV. This also takes care of the timestamp and converts them to a local time stamp from UTC

### Installation
	
### Usage

- Enter into directory. 

    ```sh
    $ cd DBtoCSVforPointsScript
    ```
	
- Run convert-db-to-csv.sh with the database file as the first argument. 


	```sh
	$ ./convert-db-to-csv.sh example.db
	```

- If the database file is not in the same directory, put in the file path. 

	```sh
	$ ./convert-db-to-csv.sh ~/Library/Safari/History.db
	```

