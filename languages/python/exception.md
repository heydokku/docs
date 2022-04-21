- *except* is how you handle an exception that *some other code* signalled
except ZeroDivisionError:
  #code

- raise is how you *signal an exception yourself*. It's like asking what the difference is between making a phone call and answering the phone

except:
  raise ZeroDivisionError


except: catches all exceptions (regardless of type). This is the equivalent of someone catching all ball types, no matter what. If you can throw them a billiard ball, they'll catch it.
raise SomeException: throws an exception (a specific type of ball, like *throwing only tennis balls*).
except SomeException: on the other hand only catches a specific type of exception (like someone that'll only catch baseballs and will ignore anything else).
