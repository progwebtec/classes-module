---
title: Exceptions
author: kleinen
layout: page
draft: false
---

## Sequence of methods calling methods calling other methods....

```mermaid
sequenceDiagram
    A->>+B: message_call()
    B->>+C: message_call()
    C->>+D: message_call()
    D->>+E: message_call()
    E->>+F: message_call()
    F->>+G: message_call()
    G->>+H: message_call()
    H->>+I: message_call()
    I-->>-H: return
    H-->>-G: return
    G-->>-F: return
    F-->>-E: return
    E-->>-D: return
    D-->>-C: return
    C-->>-B: return
    B-->>-A: return
```

## Something goes wrong
**very** deep down the call sequence...

```mermaid
sequenceDiagram
    A->>+B: message_call()
    B->>+C: message_call()
    C->>+D: message_call()
    D->>+E: message_call()
    E->>+F: message_call()
    F->>+G: message_call()
    G->>+H: message_call()
    H->>+I: message_call()
    I-->>-H: return 
    Note right of I: Something goes wrong!!
    H-->>-G: return
    G-->>-F: return
    F-->>-E: return
    E-->>-D: return
    D-->>-C: return
    C-->>-B: return
    B-->>-A: return
```

## Where it could be fixed/handled
```mermaid
sequenceDiagram
    A->>+B: message_call()
    B->>+C: message_call()
    C->>+D: message_call()
    D->>+E: message_call()
    
    E->>+F: message_call()
    F->>+G: message_call()
    
    G->>+H: message_call()
    H->>+I: message_call()
    Note right of I: Something goes<br/>WRONG!!
   
    I-->>-H: return 
    
    H-->>-G: return
    G-->>-F: return
    Note right of E: <- This method can<br/>retry in a loop
    F-->>-E: return
    E-->>-D: return
    D-->>-C: return
    Note right of B: <- This method<br/>can tell/ask user
    C-->>-B: return
    
    B-->>-A: return
   
```

But.... how to tell the methods / propagate the error??

## Manual Error Propagation?

Requires adding error handling / Propagation logic to **all** methods
in between where the error occurred until it can be handled:
```mermaid
sequenceDiagram
    A->>+B: message_call()
    B->>+C: message_call()
    C->>+D: message_call()
    D->>+E: message_call()
    
    E->>+F: message_call()
    F->>+G: message_call()
    
    G->>+H: message_call()
    H->>+I: message_call()
    Note right of I: Something goes<br/>WRONG!!
   
    break error
        I-->H: propagate error
        end
    break error
        H-->G: propagate error
    end
    break error
        G-->>F: propagate error
    end
    break error
        F-->>E: propagate error
    end

     Note right of E: <<== This method can<br/>retry in a loop
    I-->>-H: return 
   
    H-->>-G: return
    G-->>-F: return
    Note right of E: Retry did not help :-(
    break error
        E-->>D: propagate error
    end
    break error
        D-->>C: propagate error
    end
    break error
        C-->>B: propagate error
    end
    F-->>-E: return
    E-->>-D: return
    D-->>-C: return
   
    Note right of B:<<== This method<br/>can tell/ask user
    C-->>-B: return
    
    B-->>-A: return
```

## With Exceptions

- if Exception A is thrown, control jumps to next enclosing catch A block up the call stack
- all methods inbetween have to either
    - do nothing if the Exception is **Unchecked**
    - declare `throws A` in their method header if the Exception is **Checked**
- see 
    - https://docs.oracle.com/javase/specs/jls/se24/html/jls-8.html#jls-MethodHeader
    - "Here's the bottom line guideline: If a client can reasonably be expected to recover from an exception, make it a checked exception. If a client cannot do anything to recover from the exception, make it an unchecked exception." https://docs.oracle.com/javase/tutorial/essential/exceptions/runtime.html
    - for example: almost every method can cause a NullPointerException - having to declare it in every method header would give no valuable information, just clutter up the code.
    - you can catch Unchecked Exceptions in principle.
    - any exception not 





```mermaid
sequenceDiagram
    A->>+B: message_call()
    B->>+C: message_call()
    C->>+D: message_call()
    D->>+E: message_call()
    
    E->>+F: message_call()
    F->>+G: message_call()
    
    G->>+H: message_call()
    H->>+I: message_call()
    Note right of I: Something goes<br/>WRONG!!<br/>Throw Exception A
   Note right of E: <<== This method can<br/>retry in a loop
    break Exception A
        I-->>E: control jumps to next catch A
    end
   Note right of E: <<== catch(Exception A){ retry in loop }
   Note right of E: Retry did not help - re-throw A
    
    Note right of B:<<== This method<br/>can tell/ask user
    
    break Exception A
        E-->>B: control jumps to next catch A
    end
    Note right of B:<<== catch(Exception A)<br/>{ tell/ask user }
    

     
    I-->>-H: return 
   
    H-->>-G: return
    G-->>-F: return
    
   
    F-->>-E: return
    E-->>-D: return
    D-->>-C: return
   
   C-->>-B: return
    
    B-->>-A: return
   

```




   
```





