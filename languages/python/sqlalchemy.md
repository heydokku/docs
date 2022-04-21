### WHAT

what is dry_run ( (or a practice run) ?: is a testing process where potential failure effects are intentionally mitigated. Testing if a passenger will survive a crash for the car industry (a crash test) is an example of a dry run


### Connect to a database  in a function in a python script
        ```py
        def get_engine_name(engine):
        with engine.begin() as connection:
            # excute a sql commands
            connection.execute(text("PRAGMA journal_mode=wal"))
        ```
